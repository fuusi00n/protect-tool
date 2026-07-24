.class public final Lrp;
.super Ls10;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Ltk;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/turbo/live/ui/MainActivity;

.field public final synthetic g:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/turbo/live/ui/MainActivity;Ljava/io/File;Lmc;I)V
    .locals 0

    .line 1
    iput p4, p0, Lrp;->e:I

    .line 2
    .line 3
    iput-object p1, p0, Lrp;->f:Lcom/turbo/live/ui/MainActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lrp;->g:Ljava/io/File;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Ls10;-><init>(ILmc;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lrp;->e:I

    .line 2
    .line 3
    check-cast p1, Lhd;

    .line 4
    .line 5
    check-cast p2, Lmc;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, p1}, Lrp;->h(Lmc;Ljava/lang/Object;)Lmc;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lrp;

    .line 15
    .line 16
    sget-object p1, Lqg;->j:Lqg;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lrp;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lrp;->h(Lmc;Ljava/lang/Object;)Lmc;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lrp;

    .line 28
    .line 29
    sget-object p1, Lqg;->j:Lqg;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lrp;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lmc;Ljava/lang/Object;)Lmc;
    .locals 2

    .line 1
    iget p2, p0, Lrp;->e:I

    .line 2
    .line 3
    iget-object v0, p0, Lrp;->g:Ljava/io/File;

    .line 4
    .line 5
    iget-object p0, p0, Lrp;->f:Lcom/turbo/live/ui/MainActivity;

    .line 6
    .line 7
    packed-switch p2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p2, Lrp;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {p2, p0, v0, p1, v1}, Lrp;-><init>(Lcom/turbo/live/ui/MainActivity;Ljava/io/File;Lmc;I)V

    .line 14
    .line 15
    .line 16
    return-object p2

    .line 17
    :pswitch_0
    new-instance p2, Lrp;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p2, p0, v0, p1, v1}, Lrp;-><init>(Lcom/turbo/live/ui/MainActivity;Ljava/io/File;Lmc;I)V

    .line 21
    .line 22
    .line 23
    return-object p2

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lrp;->e:I

    .line 2
    .line 3
    iget-object v1, p0, Lrp;->g:Ljava/io/File;

    .line 4
    .line 5
    iget-object p0, p0, Lrp;->f:Lcom/turbo/live/ui/MainActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lzt;->w(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-static {p0, v1, p1}, Ld40;->t(Landroid/content/Context;Ljava/io/File;I)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-static {p1}, Lzt;->w(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x2

    .line 27
    invoke-static {p0, v1, p1}, Ld40;->t(Landroid/content/Context;Ljava/io/File;I)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
