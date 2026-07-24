.class public final synthetic Lp3;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lp3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lp3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lp3;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lp3;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lp3;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lp3;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lyt;

    .line 11
    .line 12
    check-cast v1, Landroid/graphics/Typeface;

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lyt;->p(Landroid/graphics/Typeface;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast p0, Landroid/content/Context;

    .line 19
    .line 20
    check-cast v1, Landroid/content/Intent;

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    return-void

    .line 26
    :pswitch_1
    check-cast p0, Lcom/turbo/live/ui/MainActivity;

    .line 27
    .line 28
    check-cast v1, Ljava/io/File;

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/turbo/live/ui/MainActivity;->F:Z

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/turbo/live/ui/MainActivity;->G:Z

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/turbo/live/ui/MainActivity;->D(Ljava/io/File;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void

    .line 42
    :pswitch_2
    check-cast p0, Lcom/turbo/live/ui/MainActivity;

    .line 43
    .line 44
    check-cast v1, Landroid/content/Intent;

    .line 45
    .line 46
    sget v0, Lcom/turbo/live/ui/MainActivity;->L:I

    .line 47
    .line 48
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    .line 50
    .line 51
    :catch_1
    return-void

    .line 52
    :pswitch_3
    check-cast p0, Lf3;

    .line 53
    .line 54
    check-cast v1, Llt;

    .line 55
    .line 56
    iget-object v0, p0, Ldb;->a:Ltn;

    .line 57
    .line 58
    new-instance v2, Lwa;

    .line 59
    .line 60
    invoke-direct {v2, v1, p0}, Lwa;-><init>(Llt;Lf3;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ltn;->a(Lqn;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_4
    check-cast p0, Lq3;

    .line 68
    .line 69
    check-cast v1, Ljava/lang/Runnable;

    .line 70
    .line 71
    :try_start_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lq3;->a()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    invoke-virtual {p0}, Lq3;->a()V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
