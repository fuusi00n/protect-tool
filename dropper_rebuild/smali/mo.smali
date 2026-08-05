.class public final Lmo;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Lvr;
.implements Landroid/widget/AdapterView$OnItemClickListener;

.field public a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field public c:Ler;

.field public d:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public final e:I

.field public f:Lur;

.field public g:Llo;

.method public constructor <init>(Landroid/content/ContextWrapper;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lmo;->e:I

    .line 5
    .line 6
    iput-object p1, p0, Lmo;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lmo;->b:Landroid/view/LayoutInflater;

    .line 13
    .line 14
    return-void
.end method

.method public final a(Ler;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmo;->f:Lur;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Lur;->a(Ler;Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final d(Lir;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final e(Lur;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final g(Lir;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final h()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmo;->g:Llo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Llo;->notifyDataSetChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final i(Landroid/content/Context;Ler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmo;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lmo;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v0, p0, Lmo;->b:Landroid/view/LayoutInflater;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lmo;->b:Landroid/view/LayoutInflater;

    .line 16
    .line 17
    :cond_0
    iput-object p2, p0, Lmo;->c:Ler;

    .line 18
    .line 19
    iget-object p0, p0, Lmo;->g:Llo;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Llo;->notifyDataSetChanged()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final k(Lk10;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Ler;->hasVisibleItems()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p1, Ler;->a:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    new-instance v0, Lfr;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, v0, Lfr;->a:Lk10;

    .line 17
    .line 18
    new-instance v2, Lo2;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Lo2;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lmo;

    .line 24
    .line 25
    iget-object v4, v2, Lo2;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v4, Lk2;

    .line 28
    .line 29
    iget-object v5, v4, Lk2;->a:Landroid/view/ContextThemeWrapper;

    .line 30
    .line 31
    sget v6, Ltv;->abc_list_menu_item_layout:I

    .line 32
    .line 33
    invoke-direct {v3, v5, v6}, Lmo;-><init>(Landroid/content/ContextWrapper;I)V

    .line 34
    .line 35
    .line 36
    iput-object v3, v0, Lfr;->c:Lmo;

    .line 37
    .line 38
    iput-object v0, v3, Lmo;->f:Lur;

    .line 39
    .line 40
    invoke-virtual {p1, v3, v1}, Ler;->b(Lvr;Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lfr;->c:Lmo;

    .line 44
    .line 45
    iget-object v3, v1, Lmo;->g:Llo;

    .line 46
    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    new-instance v3, Llo;

    .line 50
    .line 51
    invoke-direct {v3, v1}, Llo;-><init>(Lmo;)V

    .line 52
    .line 53
    .line 54
    iput-object v3, v1, Lmo;->g:Llo;

    .line 55
    .line 56
    :cond_1
    iget-object v1, v1, Lmo;->g:Llo;

    .line 57
    .line 58
    iput-object v1, v4, Lk2;->g:Landroid/widget/ListAdapter;

    .line 59
    .line 60
    iput-object v0, v4, Lk2;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 61
    .line 62
    iget-object v1, p1, Ler;->o:Landroid/view/View;

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    iput-object v1, v4, Lk2;->e:Landroid/view/View;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object v1, p1, Ler;->n:Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    iput-object v1, v4, Lk2;->c:Landroid/graphics/drawable/Drawable;

    .line 72
    .line 73
    iget-object v1, p1, Ler;->m:Ljava/lang/CharSequence;

    .line 74
    .line 75
    iput-object v1, v4, Lk2;->d:Ljava/lang/CharSequence;

    .line 76
    .line 77
    :goto_0
    iput-object v0, v4, Lk2;->f:Lfr;

    .line 78
    .line 79
    invoke-virtual {v2}, Lo2;->a()Lp2;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iput-object v1, v0, Lfr;->b:Lp2;

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lfr;->b:Lp2;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const/16 v2, 0x3eb

    .line 99
    .line 100
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 101
    .line 102
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 103
    .line 104
    const/high16 v3, 0x20000

    .line 105
    .line 106
    or-int/2addr v2, v3

    .line 107
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 108
    .line 109
    iget-object v0, v0, Lfr;->b:Lp2;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lmo;->f:Lur;

    .line 115
    .line 116
    if-eqz p0, :cond_3

    .line 117
    .line 118
    invoke-interface {p0, p1}, Lur;->o(Ler;)Z

    .line 119
    .line 120
    .line 121
    :cond_3
    const/4 p0, 0x1

    .line 122
    return p0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lmo;->c:Ler;

    .line 2
    .line 3
    iget-object p2, p0, Lmo;->g:Llo;

    .line 4
    .line 5
    invoke-virtual {p2, p3}, Llo;->b(I)Lir;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 p3, 0x0

    .line 10
    invoke-virtual {p1, p2, p0, p3}, Ler;->q(Landroid/view/MenuItem;Lvr;I)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
