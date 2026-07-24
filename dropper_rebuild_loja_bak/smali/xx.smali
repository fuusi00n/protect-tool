.class public final Lxx;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lxx;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lv70;Ls4;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    iput p2, p0, Lxx;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lxx;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lxx;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Lxx;->d:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lxx;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lxx;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    .line 10
    iget-object v1, p0, Lxx;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ls4;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lr70;->h(Landroid/view/View;Ls4;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lxx;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lxx;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lji;

    .line 28
    .line 29
    invoke-virtual {v0}, Lji;->call()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    iget-object v1, p0, Lxx;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lki;

    .line 38
    .line 39
    iget-object p0, p0, Lxx;->d:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Landroid/os/Handler;

    .line 42
    .line 43
    new-instance v2, Lj1;

    .line 44
    .line 45
    const/16 v3, 0x8

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-direct {v2, v1, v0, v3, v4}, Lj1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
