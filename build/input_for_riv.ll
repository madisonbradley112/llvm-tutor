; ModuleID = '../inputs/input_for_riv.c'
source_filename = "../inputs/input_for_riv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @foo(i32 noundef %a, i32 noundef %b, i32 noundef %c) local_unnamed_addr #0 {
entry:
  %add = add nsw i32 %a, 123
  %cmp = icmp sgt i32 %a, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %mul = mul nsw i32 %b, %a
  %div = sdiv i32 %b, %c
  %cmp1 = icmp eq i32 %mul, %div
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %mul4 = mul i32 %mul, -2
  %mul4.neg = mul i32 %mul4, %div
  %sub = add i32 %add, %mul4.neg
  br label %if.end8

if.else:                                          ; preds = %if.then
  %mul5 = mul nsw i32 %c, 987
  %mul6 = mul nsw i32 %mul5, %div
  br label %if.end8

if.end8:                                          ; preds = %entry, %if.then2, %if.else
  %result.1 = phi i32 [ %sub, %if.then2 ], [ %mul6, %if.else ], [ 321, %entry ]
  ret i32 %result.1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 88bf774c565080e30e0a073676c316ab175303af)"}
