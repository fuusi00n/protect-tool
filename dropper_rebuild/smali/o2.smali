.class public final Lo2;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Lw0;

.field public final a:I

.field public final b:Ljava/lang/Object;

.method public constructor <init>(I[Lsi;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lo2;->a:I

    .line 30
    iput-object p2, p0, Lo2;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lp2;->h(Landroid/content/Context;I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lk2;

    .line 10
    .line 11
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 12
    .line 13
    invoke-static {p1, v0}, Lp2;->h(Landroid/content/Context;I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lk2;-><init>(Landroid/view/ContextThemeWrapper;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lo2;->b:Ljava/lang/Object;

    .line 24
    .line 25
    iput v0, p0, Lo2;->a:I

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2;->b:Ljava/lang/Object;

    iput p2, p0, Lo2;->a:I

    return-void
.end method

.method public a()Lp2;
    .locals 10

    .line 1
    new-instance v0, Lp2;

    .line 2
    .line 3
    iget-object v1, p0, Lo2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lk2;

    .line 6
    .line 7
    iget-object v2, v1, Lk2;->a:Landroid/view/ContextThemeWrapper;

    .line 8
    .line 9
    iget p0, p0, Lo2;->a:I

    .line 10
    .line 11
    invoke-direct {v0, v2, p0}, Lp2;-><init>(Landroid/view/ContextThemeWrapper;I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, v1, Lk2;->e:Landroid/view/View;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iget-object v3, v0, Lp2;->f:Ln2;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    iput-object p0, v3, Ln2;->n:Landroid/view/View;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, v1, Lk2;->d:Ljava/lang/CharSequence;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    iput-object p0, v3, Ln2;->d:Ljava/lang/CharSequence;

    .line 29
    .line 30
    iget-object v4, v3, Ln2;->l:Landroid/widget/TextView;

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object p0, v1, Lk2;->c:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    iput-object p0, v3, Ln2;->j:Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    iget-object v4, v3, Ln2;->k:Landroid/widget/ImageView;

    .line 44
    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object v4, v3, Ln2;->k:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    iget-object p0, v1, Lk2;->g:Landroid/widget/ListAdapter;

    .line 56
    .line 57
    const/4 v4, 0x1

    .line 58
    const/4 v5, 0x0

    .line 59
    if-eqz p0, :cond_7

    .line 60
    .line 61
    iget-object p0, v1, Lk2;->b:Landroid/view/LayoutInflater;

    .line 62
    .line 63
    iget v6, v3, Ln2;->r:I

    .line 64
    .line 65
    invoke-virtual {p0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 70
    .line 71
    iget-boolean v6, v1, Lk2;->i:Z

    .line 72
    .line 73
    if-eqz v6, :cond_3

    .line 74
    .line 75
    iget v6, v3, Ln2;->s:I

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    iget v6, v3, Ln2;->t:I

    .line 79
    .line 80
    :goto_1
    iget-object v7, v1, Lk2;->g:Landroid/widget/ListAdapter;

    .line 81
    .line 82
    if-eqz v7, :cond_4

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    new-instance v7, Lm2;

    .line 86
    .line 87
    iget-object v8, v1, Lk2;->a:Landroid/view/ContextThemeWrapper;

    .line 88
    .line 89
    const v9, 0x1020014

    .line 90
    .line 91
    .line 92
    invoke-direct {v7, v8, v6, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :goto_2
    iput-object v7, v3, Ln2;->o:Landroid/widget/ListAdapter;

    .line 96
    .line 97
    iget v6, v1, Lk2;->j:I

    .line 98
    .line 99
    iput v6, v3, Ln2;->p:I

    .line 100
    .line 101
    iget-object v6, v1, Lk2;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    .line 103
    if-eqz v6, :cond_5

    .line 104
    .line 105
    new-instance v6, Lj2;

    .line 106
    .line 107
    invoke-direct {v6, v1, v2, v3}, Lj2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    iget-boolean v2, v1, Lk2;->i:Z

    .line 114
    .line 115
    if-eqz v2, :cond_6

    .line 116
    .line 117
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 118
    .line 119
    .line 120
    :cond_6
    iput-object p0, v3, Ln2;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 121
    .line 122
    :cond_7
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 132
    .line 133
    .line 134
    iget-object p0, v1, Lk2;->f:Lfr;

    .line 135
    .line 136
    if-eqz p0, :cond_8

    .line 137
    .line 138
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 139
    .line 140
    .line 141
    :cond_8
    return-object v0
.end method

.method public c(Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lo2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 4
    .line 5
    iget p0, p0, Lo2;->a:I

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(I)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0
.end method
