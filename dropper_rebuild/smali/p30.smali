.class public final Lp30;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.method public constructor <init>(Ls30;Lo6;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lp30;->a:I

    .line 12
    iput-object p1, p0, Lp30;->c:Ljava/lang/Object;

    iput-object p2, p0, Lp30;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lv70;Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lp30;->a:I

    .line 3
    .line 4
    iput-object p1, p0, Lp30;->b:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lp30;->c:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Lp30;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lp30;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lp30;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lv70;

    .line 11
    .line 12
    const/high16 p1, 0x3f800000

    .line 13
    .line 14
    iget-object p0, p0, Lv70;->a:Lu70;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lu70;->d(F)V

    .line 17
    .line 18
    .line 19
    check-cast v1, Landroid/view/View;

    .line 20
    .line 21
    invoke-static {v1}, Lr70;->e(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    check-cast p0, Lo6;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lg00;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    check-cast v1, Ls30;

    .line 31
    .line 32
    iget-object p0, v1, Ls30;->n:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lp30;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p0, p0, Lp30;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ls30;

    .line 13
    .line 14
    iget-object p0, p0, Ls30;->n:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
