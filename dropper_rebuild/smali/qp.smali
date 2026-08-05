.class public final Lqp;
.super Ls10;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Ltk;


# instance fields
.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/pulse/live/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/pulse/live/ui/MainActivity;Lmc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqp;->g:Lcom/pulse/live/ui/MainActivity;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Ls10;-><init>(ILmc;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lhd;

    .line 2
    .line 3
    check-cast p2, Lmc;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lqp;->h(Lmc;Ljava/lang/Object;)Lmc;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lqp;

    .line 10
    .line 11
    sget-object p1, Lqg;->j:Lqg;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lqp;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final h(Lmc;Ljava/lang/Object;)Lmc;
    .locals 1

    .line 1
    new-instance v0, Lqp;

    .line 2
    .line 3
    iget-object p0, p0, Lqp;->g:Lcom/pulse/live/ui/MainActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lqp;-><init>(Lcom/pulse/live/ui/MainActivity;Lmc;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, v0, Lqp;->f:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lqp;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lhd;

    .line 4
    .line 5
    iget v1, p0, Lqp;->e:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lzt;->w(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-static {p1}, Lzt;->w(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-interface {v0}, Lhd;->e()Lyc;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget-object v1, Lqg;->d:Lqg;

    .line 31
    .line 32
    invoke-interface {p1, v1}, Lyc;->b(Lxc;)Lwc;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lsm;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-interface {p1}, Lsm;->a()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    move p1, v2

    .line 46
    :goto_0
    if-eqz p1, :cond_5

    .line 47
    .line 48
    iput-object v0, p0, Lqp;->f:Ljava/lang/Object;

    .line 49
    .line 50
    iput v2, p0, Lqp;->e:I

    .line 51
    .line 52
    const-wide/16 v3, 0x96

    .line 53
    .line 54
    invoke-static {v3, v4, p0}, Ld40;->m(JLnc;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sget-object v1, Lid;->a:Lid;

    .line 59
    .line 60
    if-ne p1, v1, :cond_4

    .line 61
    .line 62
    return-object v1

    .line 63
    :cond_4
    :goto_1
    iget-object p1, p0, Lqp;->g:Lcom/pulse/live/ui/MainActivity;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    const/16 p0, 0x3e9

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Landroid/app/Activity;->finishActivity(I)V

    .line 78
    .line 79
    .line 80
    :cond_5
    sget-object p0, Lqg;->j:Lqg;

    .line 81
    .line 82
    return-object p0
.end method
