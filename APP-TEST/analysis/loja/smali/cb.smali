.class public final Lcb;
.super Lhn;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lek;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lj60;


# direct methods
.method public synthetic constructor <init>(Lj60;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcb;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lcb;->c:Lj60;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lhn;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcb;->b:I

    .line 2
    .line 3
    iget-object p0, p0, Lcb;->c:Lj60;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lvd;->u(Lj60;)Lzy;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    new-instance v0, Llt;

    .line 14
    .line 15
    check-cast p0, Lf3;

    .line 16
    .line 17
    new-instance v1, Lsa;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-direct {v1, p0, v2}, Lsa;-><init>(Lf3;I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Llt;-><init>(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v3, 0x21

    .line 29
    .line 30
    if-lt v1, v3, :cond_1

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v1, v3}, Lnm;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    new-instance v1, Landroid/os/Handler;

    .line 47
    .line 48
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    .line 54
    .line 55
    new-instance v3, Lp3;

    .line 56
    .line 57
    invoke-direct {v3, p0, v2, v0}, Lp3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p0, Ldb;->a:Ltn;

    .line 65
    .line 66
    new-instance v2, Lwa;

    .line 67
    .line 68
    invoke-direct {v2, v0, p0}, Lwa;-><init>(Llt;Lf3;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ltn;->a(Lqn;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    return-object v0

    .line 75
    :pswitch_1
    new-instance v0, Ldk;

    .line 76
    .line 77
    check-cast p0, Lf3;

    .line 78
    .line 79
    iget-object v1, p0, Ldb;->f:Lza;

    .line 80
    .line 81
    new-instance v2, Lcb;

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-direct {v2, p0, v3}, Lcb;-><init>(Lj60;I)V

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Ldk;-><init>(Ljava/util/concurrent/Executor;Lcb;)V

    .line 88
    .line 89
    .line 90
    return-object v0

    .line 91
    :pswitch_2
    check-cast p0, Lf3;

    .line 92
    .line 93
    invoke-virtual {p0}, Ldb;->reportFullyDrawn()V

    .line 94
    .line 95
    .line 96
    sget-object p0, Lqg;->j:Lqg;

    .line 97
    .line 98
    return-object p0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
