.class public final Lej;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Lxj;

.field public final synthetic b:Lfj;


# direct methods
.method public constructor <init>(Lfj;Lxj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lej;->b:Lfj;

    .line 5
    .line 6
    iput-object p2, p0, Lej;->a:Lxj;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lej;->a:Lxj;

    .line 2
    .line 3
    iget-object v0, p1, Lxj;->c:Laj;

    .line 4
    .line 5
    invoke-virtual {p1}, Lxj;->k()V

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Laj;->E:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    .line 16
    iget-object p0, p0, Lej;->b:Lfj;

    .line 17
    .line 18
    iget-object p0, p0, Lfj;->a:Lpj;

    .line 19
    .line 20
    invoke-virtual {p0}, Lpj;->D()Lqg;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p1, p0}, Loe;->f(Landroid/view/ViewGroup;Lqg;)Loe;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Loe;->e()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method
