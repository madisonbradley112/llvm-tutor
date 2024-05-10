; ModuleID = 'comparison-output/before/dynamiccallcounter/input_for_cc.ll'
source_filename = "../inputs/input_for_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"fez\00", align 1
@ResultFormatStrIR = global [14 x i8] c"%-20s %-10lu\0A\00"
@ResultHeaderStrIR = global [225 x i8] c"=================================================\0ALLVM-TUTOR: dynamic analysis results\0A=================================================\0ANAME                 #N DIRECT CALLS\0A-------------------------------------------------\0A\00"

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar() #0 {
entry:
  call void @foo()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fez() #0 {
entry:
  call void @bar()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  call void @foo()
  call void @bar()
  call void @fez()
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %ii.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %CounterFor_foo.0 = phi i32 [ 1, %entry ], [ %0, %for.inc ]
  %cmp = icmp slt i32 %ii.0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = add i32 1, %CounterFor_foo.0
  call void @foo()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %ii.0, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %1 = call i32 (ptr, ...) @printf(ptr @ResultHeaderStrIR)
  %2 = call i32 (ptr, ...) @printf(ptr @ResultFormatStrIR, ptr @1, i32 1)
  %3 = call i32 (ptr, ...) @printf(ptr @ResultFormatStrIR, ptr @0, i32 %CounterFor_foo.0)
  %4 = call i32 (ptr, ...) @printf(ptr @ResultFormatStrIR, ptr @2, i32 1)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @printf(ptr nocapture readonly, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 88bf774c565080e30e0a073676c316ab175303af)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
