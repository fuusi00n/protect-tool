.class public final Lkq;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Landroid/view/View$OnClickListener;

.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.method public constructor <init>(Lm30;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lkq;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lkq;->c:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v0, Le1;

    .line 10
    .line 11
    iget-object v1, p1, Lm30;->a:Landroidx/appcompat/widget/Toolbar;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object p1, p1, Lm30;->h:Ljava/lang/CharSequence;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x1000

    .line 23
    .line 24
    iput v2, v0, Le1;->e:I

    .line 25
    .line 26
    iput v2, v0, Le1;->g:I

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    iput-object v2, v0, Le1;->l:Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    iput-object v2, v0, Le1;->m:Landroid/graphics/PorterDuff$Mode;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    iput-boolean v2, v0, Le1;->n:Z

    .line 35
    .line 36
    iput-boolean v2, v0, Le1;->o:Z

    .line 37
    .line 38
    const/16 v2, 0x10

    .line 39
    .line 40
    iput v2, v0, Le1;->p:I

    .line 41
    .line 42
    iput-object v1, v0, Le1;->i:Landroid/content/Context;

    .line 43
    .line 44
    iput-object p1, v0, Le1;->a:Ljava/lang/CharSequence;

    .line 45
    .line 46
    iput-object v0, p0, Lkq;->b:Ljava/lang/Object;

    .line 47
    .line 48
    return-void
.end method

.method public synthetic constructor <init>(Lpq;Lcs;I)V
    .locals 0

    .line 49
    iput p3, p0, Lkq;->a:I

    iput-object p1, p0, Lkq;->c:Ljava/lang/Object;

    iput-object p2, p0, Lkq;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lkq;->a:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lkq;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lkq;->c:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lm30;

    .line 13
    .line 14
    iget-object p1, p0, Lm30;->k:Landroid/view/Window$Callback;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-boolean p0, p0, Lm30;->l:Z

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    check-cast v2, Le1;

    .line 23
    .line 24
    invoke-interface {p1, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :pswitch_0
    check-cast p0, Lpq;

    .line 29
    .line 30
    iget-object p1, p0, Lpq;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lww;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 37
    .line 38
    invoke-virtual {p1}, Lww;->v()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {p1, v1, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(IIZ)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    const/4 p1, -0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {p1}, Lww;->H(Landroid/view/View;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 55
    .line 56
    iget-object v1, p0, Lpq;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Low;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Low;->a()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-ge p1, v1, :cond_2

    .line 67
    .line 68
    check-cast v2, Lcs;

    .line 69
    .line 70
    iget-object v1, v2, Lcs;->c:Ly7;

    .line 71
    .line 72
    iget-object v1, v1, Ly7;->a:Lzr;

    .line 73
    .line 74
    iget-object v1, v1, Lzr;->a:Ljava/util/Calendar;

    .line 75
    .line 76
    invoke-static {v1}, Lm40;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1, v0, p1}, Ljava/util/Calendar;->add(II)V

    .line 81
    .line 82
    .line 83
    new-instance p1, Lzr;

    .line 84
    .line 85
    invoke-direct {p1, v1}, Lzr;-><init>(Ljava/util/Calendar;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lpq;->E(Lzr;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void

    .line 92
    :pswitch_1
    check-cast p0, Lpq;

    .line 93
    .line 94
    iget-object p1, p0, Lpq;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    .line 96
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lww;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    add-int/lit8 p1, p1, -0x1

    .line 107
    .line 108
    if-ltz p1, :cond_3

    .line 109
    .line 110
    check-cast v2, Lcs;

    .line 111
    .line 112
    iget-object v1, v2, Lcs;->c:Ly7;

    .line 113
    .line 114
    iget-object v1, v1, Ly7;->a:Lzr;

    .line 115
    .line 116
    iget-object v1, v1, Lzr;->a:Ljava/util/Calendar;

    .line 117
    .line 118
    invoke-static {v1}, Lm40;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1, v0, p1}, Ljava/util/Calendar;->add(II)V

    .line 123
    .line 124
    .line 125
    new-instance p1, Lzr;

    .line 126
    .line 127
    invoke-direct {p1, v1}, Lzr;-><init>(Ljava/util/Calendar;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lpq;->E(Lzr;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    return-void

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
