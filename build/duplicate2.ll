; ModuleID = 'input_for_riv.ll'
source_filename = "../inputs/input_for_riv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @foo(i32 noundef %a, i32 noundef %b, i32 noundef %c) local_unnamed_addr #0 {
lt-if-then-else-0:
  %0 = icmp eq i32 %a, 0
  br i1 %0, label %lt-clone-1-0, label %lt-clone-2-0

lt-clone-1-0:                                     ; preds = %lt-if-then-else-0
  %1 = add nsw i32 %a, 123
  %2 = icmp sgt i32 %a, 0
  br label %lt-tail-0

lt-clone-2-0:                                     ; preds = %lt-if-then-else-0
  %3 = add nsw i32 %a, 123
  %4 = icmp sgt i32 %a, 0
  br label %lt-tail-0

lt-tail-0:                                        ; preds = %lt-clone-2-0, %lt-clone-1-0
  %add = phi i32 [ %1, %lt-clone-1-0 ], [ %3, %lt-clone-2-0 ]
  %cmp = phi i1 [ %2, %lt-clone-1-0 ], [ %4, %lt-clone-2-0 ]
  br i1 %cmp, label %lt-if-then-else-1, label %lt-if-then-else-4

lt-if-then-else-1:                                ; preds = %lt-tail-0
  %5 = icmp eq i32 %c, 0
  br i1 %5, label %lt-clone-1-1, label %lt-clone-2-1

lt-clone-1-1:                                     ; preds = %lt-if-then-else-1
  %6 = mul nsw i32 %b, %a
  %7 = sdiv i32 %b, %c
  %8 = icmp eq i32 %6, %7
  br label %lt-tail-1

lt-clone-2-1:                                     ; preds = %lt-if-then-else-1
  %9 = mul nsw i32 %b, %a
  %10 = sdiv i32 %b, %c
  %11 = icmp eq i32 %9, %10
  br label %lt-tail-1

lt-tail-1:                                        ; preds = %lt-clone-2-1, %lt-clone-1-1
  %mul = phi i32 [ %6, %lt-clone-1-1 ], [ %9, %lt-clone-2-1 ]
  %div = phi i32 [ %7, %lt-clone-1-1 ], [ %10, %lt-clone-2-1 ]
  %cmp1 = phi i1 [ %8, %lt-clone-1-1 ], [ %11, %lt-clone-2-1 ]
  br i1 %cmp1, label %lt-if-then-else-2, label %lt-if-then-else-3

lt-if-then-else-2:                                ; preds = %lt-tail-1
  %12 = icmp eq i32 %mul, 0
  br i1 %12, label %lt-clone-1-2, label %lt-clone-2-2

lt-clone-1-2:                                     ; preds = %lt-if-then-else-2
  %13 = mul i32 %mul, -2
  %14 = mul i32 %13, %div
  %15 = add i32 %add, %14
  br label %lt-tail-2

lt-clone-2-2:                                     ; preds = %lt-if-then-else-2
  %16 = mul i32 %mul, -2
  %17 = mul i32 %16, %div
  %18 = add i32 %add, %17
  br label %lt-tail-2

lt-tail-2:                                        ; preds = %lt-clone-2-2, %lt-clone-1-2
  %mul4 = phi i32 [ %13, %lt-clone-1-2 ], [ %16, %lt-clone-2-2 ]
  %mul4.neg = phi i32 [ %14, %lt-clone-1-2 ], [ %17, %lt-clone-2-2 ]
  %sub = phi i32 [ %15, %lt-clone-1-2 ], [ %18, %lt-clone-2-2 ]
  br label %lt-if-then-else-4

lt-if-then-else-3:                                ; preds = %lt-tail-1
  %19 = icmp eq i32 %a, 0
  br i1 %19, label %lt-clone-1-3, label %lt-clone-2-3

lt-clone-1-3:                                     ; preds = %lt-if-then-else-3
  %20 = mul nsw i32 %c, 987
  %21 = mul nsw i32 %20, %div
  br label %lt-tail-3

lt-clone-2-3:                                     ; preds = %lt-if-then-else-3
  %22 = mul nsw i32 %c, 987
  %23 = mul nsw i32 %22, %div
  br label %lt-tail-3

lt-tail-3:                                        ; preds = %lt-clone-2-3, %lt-clone-1-3
  %mul5 = phi i32 [ %20, %lt-clone-1-3 ], [ %22, %lt-clone-2-3 ]
  %mul6 = phi i32 [ %21, %lt-clone-1-3 ], [ %23, %lt-clone-2-3 ]
  br label %lt-if-then-else-4

lt-if-then-else-4:                                ; preds = %lt-tail-3, %lt-tail-2, %lt-tail-0
  %result.1 = phi i32 [ %sub, %lt-tail-2 ], [ %mul6, %lt-tail-3 ], [ 321, %lt-tail-0 ]
  %24 = icmp eq i1 %cmp, false
  br i1 %24, label %lt-clone-1-4, label %lt-clone-2-4

lt-clone-1-4:                                     ; preds = %lt-if-then-else-4
  br label %lt-tail-4

lt-clone-2-4:                                     ; preds = %lt-if-then-else-4
  br label %lt-tail-4

lt-tail-4:                                        ; preds = %lt-clone-2-4, %lt-clone-1-4
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
