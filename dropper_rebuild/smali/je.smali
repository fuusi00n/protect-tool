.class public final Lje;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Lq00;

.field public final synthetic e:Lme;

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZLq00;Lme;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lje;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    iput-object p2, p0, Lje;->b:Landroid/view/View;

    .line 4
    .line 5
    iput-boolean p3, p0, Lje;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, Lje;->d:Lq00;

    .line 8
    .line 9
    iput-object p5, p0, Lje;->e:Lme;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lje;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    iget-object v0, p0, Lje;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-boolean p1, p0, Lje;->c:Z

    .line 9
    .line 10
    iget-object v1, p0, Lje;->d:Lq00;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget p1, v1, Lq00;->a:I

    .line 15
    .line 16
    invoke-static {v0, p1}, Lk00;->a(Landroid/view/View;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lje;->e:Lme;

    .line 20
    .line 21
    invoke-virtual {p0}, Ld4;->e()V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x2

    .line 25
    invoke-static {p0}, Lpj;->E(I)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method
