.class public final Lcj;
.super Lvd;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lj60;
.implements Lrn;
.implements Ldz;
.implements Luj;


# instance fields
.field public final E:Lf3;

.field public final F:Lf3;

.field public final G:Landroid/os/Handler;

.field public final H:Lqj;

.field public final synthetic I:Lf3;


# direct methods
.method public constructor <init>(Lf3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcj;->I:Lf3;

    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lqj;

    .line 12
    .line 13
    invoke-direct {v1}, Lpj;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcj;->H:Lqj;

    .line 17
    .line 18
    iput-object p1, p0, Lcj;->E:Lf3;

    .line 19
    .line 20
    iput-object p1, p0, Lcj;->F:Lf3;

    .line 21
    .line 22
    iput-object v0, p0, Lcj;->G:Landroid/os/Handler;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final J(I)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcj;->I:Lf3;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lf3;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final K()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcj;->I:Lf3;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Lm3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcj;->I:Lf3;

    .line 2
    .line 3
    iget-object p0, p0, Ldb;->d:Lcz;

    .line 4
    .line 5
    iget-object p0, p0, Lcz;->b:Lm3;

    .line 6
    .line 7
    return-object p0
.end method

.method public final d()Li60;
    .locals 0

    .line 1
    iget-object p0, p0, Lcj;->I:Lf3;

    .line 2
    .line 3
    invoke-virtual {p0}, Ldb;->d()Li60;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final e()Ltn;
    .locals 0

    .line 1
    iget-object p0, p0, Lcj;->I:Lf3;

    .line 2
    .line 3
    iget-object p0, p0, Lf3;->t:Ltn;

    .line 4
    .line 5
    return-object p0
.end method
