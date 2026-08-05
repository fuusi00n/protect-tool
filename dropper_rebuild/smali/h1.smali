.class public final Lh1;
.super Lpr;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public final synthetic l:I

.field public final synthetic m:Ll1;

.method public constructor <init>(Ll1;Landroid/content/Context;Ler;Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x1

    iput v0, p0, Lh1;->l:I

    .line 49
    iput-object p1, p0, Lh1;->m:Ll1;

    .line 50
    sget v6, Luu;->actionOverflowMenuStyle:I

    const/4 v7, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 51
    invoke-direct/range {v1 .. v7}, Lpr;-><init>(Landroid/content/Context;Ler;Landroid/view/View;ZII)V

    const p0, 0x800005

    .line 52
    iput p0, v1, Lpr;->f:I

    .line 53
    iget-object p0, p1, Ll1;->w:Lo0;

    .line 54
    iput-object p0, v1, Lpr;->h:Lur;

    .line 55
    iget-object p1, v1, Lpr;->i:Lnr;

    if-eqz p1, :cond_0

    .line 56
    invoke-interface {p1, p0}, Lvr;->e(Lur;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ll1;Landroid/content/Context;Lk10;Landroid/view/View;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lh1;->l:I

    .line 3
    .line 4
    iput-object p1, p0, Lh1;->m:Ll1;

    .line 5
    .line 6
    sget v6, Luu;->actionOverflowMenuStyle:I

    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v1, p0

    .line 11
    move-object v2, p2

    .line 12
    move-object v3, p3

    .line 13
    move-object v4, p4

    .line 14
    invoke-direct/range {v1 .. v7}, Lpr;-><init>(Landroid/content/Context;Ler;Landroid/view/View;ZII)V

    .line 15
    .line 16
    .line 17
    iget-object p0, v3, Lk10;->A:Lir;

    .line 18
    .line 19
    iget p0, p0, Lir;->x:I

    .line 20
    .line 21
    const/16 p2, 0x20

    .line 22
    .line 23
    and-int/2addr p0, p2

    .line 24
    if-ne p0, p2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p0, p1, Ll1;->i:Lk1;

    .line 28
    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    iget-object p0, p1, Ll1;->h:Lxr;

    .line 32
    .line 33
    check-cast p0, Landroid/view/View;

    .line 34
    .line 35
    :cond_1
    iput-object p0, v1, Lpr;->e:Landroid/view/View;

    .line 36
    .line 37
    :goto_0
    iget-object p0, p1, Ll1;->w:Lo0;

    .line 38
    .line 39
    iput-object p0, v1, Lpr;->h:Lur;

    .line 40
    .line 41
    iget-object p1, v1, Lpr;->i:Lnr;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-interface {p1, p0}, Lvr;->e(Lur;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget v0, p0, Lh1;->l:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lh1;->m:Ll1;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, v2, Ll1;->c:Ler;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v0, v3}, Ler;->c(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object v1, v2, Ll1;->s:Lh1;

    .line 18
    .line 19
    invoke-super {p0}, Lpr;->c()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iput-object v1, v2, Ll1;->t:Lh1;

    .line 24
    .line 25
    invoke-super {p0}, Lpr;->c()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
