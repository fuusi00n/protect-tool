.class public final Lji;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Ljava/util/concurrent/Callable;

.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lh2;

.field public final synthetic e:I

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Lh2;II)V
    .locals 0

    .line 1
    iput p5, p0, Lji;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lji;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lji;->c:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p3, p0, Lji;->d:Lh2;

    .line 8
    .line 9
    iput p4, p0, Lji;->e:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lji;->a:I

    .line 2
    .line 3
    iget v1, p0, Lji;->e:I

    .line 4
    .line 5
    iget-object v2, p0, Lji;->d:Lh2;

    .line 6
    .line 7
    iget-object v3, p0, Lji;->c:Landroid/content/Context;

    .line 8
    .line 9
    iget-object p0, p0, Lji;->b:Ljava/lang/String;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-static {p0, v3, v2, v1}, Lmi;->a(Ljava/lang/String;Landroid/content/Context;Lh2;I)Lli;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    new-instance p0, Lli;

    .line 20
    .line 21
    const/4 v0, -0x3

    .line 22
    invoke-direct {p0, v0}, Lli;-><init>(I)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-object p0

    .line 26
    :pswitch_0
    invoke-static {p0, v3, v2, v1}, Lmi;->a(Ljava/lang/String;Landroid/content/Context;Lh2;I)Lli;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
