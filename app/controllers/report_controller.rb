class ReportController < ApplicationController
  before_filter :login_required

  class AnswerReport
    attr_accessor :answorder,:answorder2,:useransw,:question,:rightansw,:type,:answers,:right
  end

  class Type9Format
    attr_accessor :a1,:a2,:right
  end

def createdetailreport
  @user=User.find(params[:userid])
  @ts=@user.testsessions.find(params[:id])
  @tests=@ts.tests
  qs=@ts.questions
  @ra_count=0
  @tests.each{|t| @ra_count+=t.ok}
  @percent=@ra_count.to_f/@tests.length.to_f*100.0
  @questions=Array.new
  @tests.each{|t| @questions.push(qs.detect{|q| q.id==t.question_id})}
  @rights=Array.new(@tests.length){|u| '-'}
  @reports=Array.new
  @tests.each_index do |i|
    @rights[i] = '+' if @tests[i].ok==1
    rep=AnswerReport.new
    rep.question=@questions[i].content
    rep.type=@questions[i].qtype_id
    rep.right=@rights[i]
    answs=@questions[i].answers
    rep.answers=Hash.new
    answs.each { |item| rep.answers[item.id]=item }
    if rep.type!=9
      rep.answorder=@tests[i].answorder.split(' ').map{|el| el.to_i}
    else
      tok=@tests[i].answorder.split(',')
      rep.answorder=tok[0].split(' ').map{|el| el.to_i}
      rep.answorder2=tok[1].split(' ').map{|el| el.to_i}
    end
    case rep.type
    when 6
      rep.useransw=@tests[i].useransw.to_i
      rep.rightansw=rep.answers.detect{|k,v| v.right==1}[0]
    when 7
      rep.useransw=@tests[i].useransw.split('|%')
      rep.rightansw=rep.answers.select{|k,v| v.right==1}.keys
    when 8
      rep.useransw=@tests[i].useransw
      rep.rightansw=rep.answers
    when 9
      rep.useransw=Array.new(rep.answorder.length){|it| Type9Format.new}
      rep.useransw.each{|it| it.a2=""}
      rep.answorder.each_index{|it| rep.useransw[it].a1=rep.answers[rep.answorder[it]].content }
      ans=@tests[i].useransw.split('|%').map{|it| it.to_i-1}
      ans.push(-1) if ans.length<rep.answorder2.length
      ans.each_index do|it|
        if ans[it]!=-1
          rep.useransw[ans[it]].a2=rep.answers[rep.answorder2[it]].content
        else
          p=Type9Format.new
          p.a1=""
          p.a2=rep.answers[rep.answorder2[it]].content
          rep.useransw.push(p)
        end
      end
      rep.rightansw=Array.new(rep.answorder.length){|it| Type9Format.new}
      rep.rightansw.each{|it| it.a2=""}
      rep.answorder.each_index do |it|
        rep.rightansw[it].a1=rep.answers[rep.answorder[it]].content
        rep.rightansw[it].a2=rep.answers.detect{|k,v| v.right==rep.answers[rep.answorder[it]].right&&v.col==2}[1].content if rep.answers[rep.answorder[it]].right!=0
      end
      arr=rep.answers.select{|k,v| v.right==0}
      arr.each do |it|
        p=Type9Format.new
        p.a1=""
        p.a2=it[1].content
        rep.rightansw.push(p)
      end
      rep.useransw.each do |it|
        if rep.rightansw.count{|k| k.a1==it.a1&&k.a2==it.a2}>0
          it.right=true
        else
          it.right=false
        end
      end
      #ans=Array.new
    when 10
      rep.useransw=@tests[i].useransw.split('|%').map{|it| rep.answers[rep.answorder[it.to_i-1]]}
      rep.rightansw=rep.answers.sort{|a,b| a[1].right<=>b[1].right }.map{|it| it[1]}
    end
    @reports.push(rep)
  end


end

end
