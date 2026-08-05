.class public final Le5;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Landroid/widget/PopupWindow$OnDismissListener;

.field public final synthetic a:Lz4;

.field public final synthetic b:Lf5;

.method public constructor <init>(Lf5;Lz4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le5;->b:Lf5;

    .line 5
    .line 6
    iput-object p2, p0, Le5;->a:Lz4;

    .line 7
    .line 8
    return-void
.end method

.method public final onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Le5;->b:Lf5;

    .line 2
    .line 3
    iget-object v0, v0, Lf5;->G:Li5;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Le5;->a:Lz4;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
