.class public Lpr;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public final a:Landroid/content/Context;

.field public final b:Ler;

.field public final c:Z

.field public final d:I

.field public e:Landroid/view/View;

.field public f:I

.field public g:Z

.field public h:Lur;

.field public i:Lnr;

.field public j:Landroid/widget/PopupWindow$OnDismissListener;

.field public final k:Lor;

.method public constructor <init>(Landroid/content/Context;Ler;Landroid/view/View;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const p6, 0x800003

    .line 5
    .line 6
    .line 7
    iput p6, p0, Lpr;->f:I

    .line 8
    .line 9
    new-instance p6, Lor;

    .line 10
    .line 11
    invoke-direct {p6, p0}, Lor;-><init>(Lpr;)V

    .line 12
    .line 13
    .line 14
    iput-object p6, p0, Lpr;->k:Lor;

    .line 15
    .line 16
    iput-object p1, p0, Lpr;->a:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p2, p0, Lpr;->b:Ler;

    .line 19
    .line 20
    iput-object p3, p0, Lpr;->e:Landroid/view/View;

    .line 21
    .line 22
    iput-boolean p4, p0, Lpr;->c:Z

    .line 23
    .line 24
    iput p5, p0, Lpr;->d:I

    .line 25
    .line 26
    return-void
.end method

.method public final a()Lnr;
    .locals 11

    .line 1
    iget-object v0, p0, Lpr;->i:Lnr;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "window"

    .line 6
    .line 7
    iget-object v1, p0, Lpr;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/WindowManager;

    .line 14
    .line 15
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v2, Landroid/graphics/Point;

    .line 20
    .line 21
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 25
    .line 26
    .line 27
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 28
    .line 29
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 30
    .line 31
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    sget v3, Lav;->abc_cascading_menus_min_smallest_width:I

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-lt v0, v2, :cond_0

    .line 46
    .line 47
    new-instance v0, Lr8;

    .line 48
    .line 49
    iget-object v2, p0, Lpr;->e:Landroid/view/View;

    .line 50
    .line 51
    iget v3, p0, Lpr;->d:I

    .line 52
    .line 53
    iget-boolean v4, p0, Lpr;->c:Z

    .line 54
    .line 55
    invoke-direct {v0, v1, v2, v3, v4}, Lr8;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance v5, La10;

    .line 60
    .line 61
    iget-object v8, p0, Lpr;->e:Landroid/view/View;

    .line 62
    .line 63
    iget v9, p0, Lpr;->d:I

    .line 64
    .line 65
    iget-boolean v10, p0, Lpr;->c:Z

    .line 66
    .line 67
    iget-object v6, p0, Lpr;->a:Landroid/content/Context;

    .line 68
    .line 69
    iget-object v7, p0, Lpr;->b:Ler;

    .line 70
    .line 71
    invoke-direct/range {v5 .. v10}, La10;-><init>(Landroid/content/Context;Ler;Landroid/view/View;IZ)V

    .line 72
    .line 73
    .line 74
    move-object v0, v5

    .line 75
    :goto_0
    iget-object v1, p0, Lpr;->b:Ler;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lnr;->l(Ler;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lpr;->k:Lor;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lnr;->r(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lpr;->e:Landroid/view/View;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lnr;->n(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lpr;->h:Lur;

    .line 91
    .line 92
    invoke-interface {v0, v1}, Lvr;->e(Lur;)V

    .line 93
    .line 94
    .line 95
    iget-boolean v1, p0, Lpr;->g:Z

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lnr;->o(Z)V

    .line 98
    .line 99
    .line 100
    iget v1, p0, Lpr;->f:I

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lnr;->p(I)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lpr;->i:Lnr;

    .line 106
    .line 107
    :cond_1
    iget-object p0, p0, Lpr;->i:Lnr;

    .line 108
    .line 109
    return-object p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lpr;->i:Lnr;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Ld00;->b()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpr;->i:Lnr;

    .line 3
    .line 4
    iget-object p0, p0, Lpr;->j:Landroid/widget/PopupWindow$OnDismissListener;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final d(IIZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lpr;->a()Lnr;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p4}, Lnr;->s(Z)V

    .line 6
    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    iget p3, p0, Lpr;->f:I

    .line 11
    .line 12
    iget-object p4, p0, Lpr;->e:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {p4}, Landroid/view/View;->getLayoutDirection()I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    invoke-static {p3, p4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    and-int/lit8 p3, p3, 0x7

    .line 23
    .line 24
    const/4 p4, 0x5

    .line 25
    if-ne p3, p4, :cond_0

    .line 26
    .line 27
    iget-object p3, p0, Lpr;->e:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    sub-int/2addr p1, p3

    .line 34
    :cond_0
    invoke-virtual {v0, p1}, Lnr;->q(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p2}, Lnr;->t(I)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lpr;->a:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 51
    .line 52
    const/high16 p3, 0x42400000

    .line 53
    .line 54
    mul-float/2addr p0, p3

    .line 55
    const/high16 p3, 0x40000000

    .line 56
    .line 57
    div-float/2addr p0, p3

    .line 58
    float-to-int p0, p0

    .line 59
    new-instance p3, Landroid/graphics/Rect;

    .line 60
    .line 61
    sub-int p4, p1, p0

    .line 62
    .line 63
    sub-int v1, p2, p0

    .line 64
    .line 65
    add-int/2addr p1, p0

    .line 66
    add-int/2addr p2, p0

    .line 67
    invoke-direct {p3, p4, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 68
    .line 69
    .line 70
    iput-object p3, v0, Lnr;->a:Landroid/graphics/Rect;

    .line 71
    .line 72
    :cond_1
    invoke-interface {v0}, Ld00;->f()V

    .line 73
    .line 74
    .line 75
    return-void
.end method
