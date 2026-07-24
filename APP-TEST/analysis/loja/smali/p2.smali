.class public final Lp2;
.super Leb;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Lj3;


# instance fields
.field public d:Lg4;

.field public final e:Lh4;

.field public final f:Ln2;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;I)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Lp2;->h(Landroid/content/Context;I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/util/TypedValue;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget v3, Luu;->dialogTheme:I

    .line 18
    .line 19
    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 20
    .line 21
    .line 22
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, p2

    .line 26
    :goto_0
    invoke-direct {p0, p1, v1}, Leb;-><init>(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lh4;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lh4;-><init>(Lp2;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lp2;->e:Lh4;

    .line 35
    .line 36
    invoke-virtual {p0}, Lp2;->d()Ls3;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez p2, :cond_1

    .line 41
    .line 42
    new-instance p2, Landroid/util/TypedValue;

    .line 43
    .line 44
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget v2, Luu;->dialogTheme:I

    .line 52
    .line 53
    invoke-virtual {p1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 54
    .line 55
    .line 56
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 57
    .line 58
    :cond_1
    move-object p1, v1

    .line 59
    check-cast p1, Lg4;

    .line 60
    .line 61
    iput p2, p1, Lg4;->S:I

    .line 62
    .line 63
    invoke-virtual {v1}, Ls3;->b()V

    .line 64
    .line 65
    .line 66
    new-instance p1, Ln2;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {p1, p2, p0, v0}, Ln2;-><init>(Landroid/content/Context;Lp2;Landroid/view/Window;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lp2;->f:Ln2;

    .line 80
    .line 81
    return-void
.end method

.method public static h(Landroid/content/Context;I)I
    .locals 2

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sget v0, Luu;->alertDialogTheme:I

    .line 19
    .line 20
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    .line 22
    .line 23
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    .line 24
    .line 25
    return p0
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp2;->d()Ls3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lg4;

    .line 6
    .line 7
    invoke-virtual {p0}, Lg4;->u()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lg4;->z:Landroid/view/ViewGroup;

    .line 11
    .line 12
    const v1, 0x1020002

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/view/ViewGroup;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lg4;->m:La4;

    .line 25
    .line 26
    iget-object p0, p0, Lg4;->l:Landroid/view/Window;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p1, p0}, La4;->a(Landroid/view/Window$Callback;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final d()Ls3;
    .locals 3

    .line 1
    iget-object v0, p0, Lp2;->d:Lg4;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Ls3;->a:Lq3;

    .line 6
    .line 7
    new-instance v0, Lg4;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v0, v1, v2, p0, p0}, Lg4;-><init>(Landroid/content/Context;Landroid/view/Window;Lj3;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lp2;->d:Lg4;

    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lp2;->d:Lg4;

    .line 23
    .line 24
    return-object p0
.end method

.method public final dismiss()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lp2;->d()Ls3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ls3;->c()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lp2;->e:Lh4;

    .line 10
    .line 11
    invoke-static {v1, v0, p0, p1}, Lnm;->p(Lfn;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget v1, Ljv;->view_tree_lifecycle_owner:I

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget v1, Llv;->view_tree_saved_state_registry_owner:I

    .line 29
    .line 30
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    sget v1, Lov;->view_tree_on_back_pressed_dispatcher_owner:I

    .line 45
    .line 46
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lp2;->d()Ls3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lg4;

    .line 6
    .line 7
    invoke-virtual {p0}, Lg4;->u()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lg4;->l:Landroid/view/Window;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final g(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lp2;->d()Ls3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lg4;

    .line 6
    .line 7
    iget-object v1, v0, Lg4;->k:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-super {p0, p1}, Leb;->onCreate(Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lp2;->d()Ls3;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ls3;->b()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final i(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lp2;->d()Ls3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Ls3;->j(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final invalidateOptionsMenu()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp2;->d()Ls3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lg4;

    .line 6
    .line 7
    iget-object v0, p0, Lg4;->n:Lo70;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lg4;->y()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lg4;->n:Lo70;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lg4;->z(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final j(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    invoke-virtual/range {p0 .. p1}, Lp2;->g(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    move-object/from16 v0, p0

    .line 5
    .line 6
    iget-object v0, v0, Lp2;->f:Ln2;

    .line 7
    .line 8
    iget v1, v0, Ln2;->q:I

    .line 9
    .line 10
    iget-object v2, v0, Ln2;->b:Lp2;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Lp2;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Ln2;->a:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v2, v0, Ln2;->c:Landroid/view/Window;

    .line 18
    .line 19
    sget v3, Lfv;->parentPanel:I

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    sget v4, Lfv;->topPanel:I

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    sget v5, Lfv;->contentPanel:I

    .line 32
    .line 33
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    sget v6, Lfv;->buttonPanel:I

    .line 38
    .line 39
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    sget v7, Lfv;->customPanel:I

    .line 44
    .line 45
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Landroid/view/ViewGroup;

    .line 50
    .line 51
    const/high16 v7, 0x20000

    .line 52
    .line 53
    invoke-virtual {v2, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 54
    .line 55
    .line 56
    const/16 v7, 0x8

    .line 57
    .line 58
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    sget v8, Lfv;->topPanel:I

    .line 62
    .line 63
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    sget v9, Lfv;->contentPanel:I

    .line 68
    .line 69
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    sget v10, Lfv;->buttonPanel:I

    .line 74
    .line 75
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    invoke-static {v8, v4}, Ln2;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static {v9, v5}, Ln2;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-static {v10, v6}, Ln2;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    sget v8, Lfv;->scrollView:I

    .line 92
    .line 93
    invoke-virtual {v2, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    check-cast v8, Landroidx/core/widget/NestedScrollView;

    .line 98
    .line 99
    iput-object v8, v0, Ln2;->i:Landroidx/core/widget/NestedScrollView;

    .line 100
    .line 101
    const/4 v9, 0x0

    .line 102
    invoke-virtual {v8, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 103
    .line 104
    .line 105
    iget-object v8, v0, Ln2;->i:Landroidx/core/widget/NestedScrollView;

    .line 106
    .line 107
    invoke-virtual {v8, v9}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 108
    .line 109
    .line 110
    const v8, 0x102000b

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    check-cast v8, Landroid/widget/TextView;

    .line 118
    .line 119
    iput-object v8, v0, Ln2;->m:Landroid/widget/TextView;

    .line 120
    .line 121
    const/4 v10, -0x1

    .line 122
    if-nez v8, :cond_0

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object v8, v0, Ln2;->i:Landroidx/core/widget/NestedScrollView;

    .line 129
    .line 130
    iget-object v11, v0, Ln2;->m:Landroid/widget/TextView;

    .line 131
    .line 132
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 133
    .line 134
    .line 135
    iget-object v8, v0, Ln2;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 136
    .line 137
    if-eqz v8, :cond_1

    .line 138
    .line 139
    iget-object v8, v0, Ln2;->i:Landroidx/core/widget/NestedScrollView;

    .line 140
    .line 141
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    check-cast v8, Landroid/view/ViewGroup;

    .line 146
    .line 147
    iget-object v11, v0, Ln2;->i:Landroidx/core/widget/NestedScrollView;

    .line 148
    .line 149
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 154
    .line 155
    .line 156
    iget-object v12, v0, Ln2;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 157
    .line 158
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    .line 159
    .line 160
    invoke-direct {v13, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8, v12, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    :goto_0
    const v8, 0x1020019

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    check-cast v8, Landroid/widget/Button;

    .line 178
    .line 179
    iput-object v8, v0, Ln2;->f:Landroid/widget/Button;

    .line 180
    .line 181
    iget-object v11, v0, Ln2;->w:Ly0;

    .line 182
    .line 183
    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    const/4 v8, 0x0

    .line 187
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v12

    .line 191
    iget-object v13, v0, Ln2;->f:Landroid/widget/Button;

    .line 192
    .line 193
    const/4 v14, 0x1

    .line 194
    if-eqz v12, :cond_2

    .line 195
    .line 196
    invoke-virtual {v13, v7}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    move v12, v9

    .line 200
    goto :goto_1

    .line 201
    :cond_2
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    iget-object v12, v0, Ln2;->f:Landroid/widget/Button;

    .line 205
    .line 206
    invoke-virtual {v12, v9}, Landroid/view/View;->setVisibility(I)V

    .line 207
    .line 208
    .line 209
    move v12, v14

    .line 210
    :goto_1
    const v13, 0x102001a

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v13

    .line 217
    check-cast v13, Landroid/widget/Button;

    .line 218
    .line 219
    iput-object v13, v0, Ln2;->g:Landroid/widget/Button;

    .line 220
    .line 221
    invoke-virtual {v13, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    .line 223
    .line 224
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 225
    .line 226
    .line 227
    move-result v13

    .line 228
    iget-object v15, v0, Ln2;->g:Landroid/widget/Button;

    .line 229
    .line 230
    if-eqz v13, :cond_3

    .line 231
    .line 232
    invoke-virtual {v15, v7}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_3
    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    iget-object v13, v0, Ln2;->g:Landroid/widget/Button;

    .line 240
    .line 241
    invoke-virtual {v13, v9}, Landroid/view/View;->setVisibility(I)V

    .line 242
    .line 243
    .line 244
    or-int/lit8 v12, v12, 0x2

    .line 245
    .line 246
    :goto_2
    const v13, 0x102001b

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object v13

    .line 253
    check-cast v13, Landroid/widget/Button;

    .line 254
    .line 255
    iput-object v13, v0, Ln2;->h:Landroid/widget/Button;

    .line 256
    .line 257
    invoke-virtual {v13, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 261
    .line 262
    .line 263
    move-result v11

    .line 264
    iget-object v13, v0, Ln2;->h:Landroid/widget/Button;

    .line 265
    .line 266
    if-eqz v11, :cond_4

    .line 267
    .line 268
    invoke-virtual {v13, v7}, Landroid/view/View;->setVisibility(I)V

    .line 269
    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_4
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    .line 274
    .line 275
    iget-object v11, v0, Ln2;->h:Landroid/widget/Button;

    .line 276
    .line 277
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    .line 278
    .line 279
    .line 280
    or-int/lit8 v12, v12, 0x4

    .line 281
    .line 282
    :goto_3
    new-instance v11, Landroid/util/TypedValue;

    .line 283
    .line 284
    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    sget v13, Luu;->alertDialogCenterButtons:I

    .line 292
    .line 293
    invoke-virtual {v1, v13, v11, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 294
    .line 295
    .line 296
    iget v1, v11, Landroid/util/TypedValue;->data:I

    .line 297
    .line 298
    const/4 v11, 0x2

    .line 299
    if-eqz v1, :cond_7

    .line 300
    .line 301
    const/high16 v1, 0x3f000000    # 0.5f

    .line 302
    .line 303
    if-ne v12, v14, :cond_5

    .line 304
    .line 305
    iget-object v13, v0, Ln2;->f:Landroid/widget/Button;

    .line 306
    .line 307
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 308
    .line 309
    .line 310
    move-result-object v15

    .line 311
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 312
    .line 313
    iput v14, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 314
    .line 315
    iput v1, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 316
    .line 317
    invoke-virtual {v13, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_5
    if-ne v12, v11, :cond_6

    .line 322
    .line 323
    iget-object v13, v0, Ln2;->g:Landroid/widget/Button;

    .line 324
    .line 325
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 326
    .line 327
    .line 328
    move-result-object v15

    .line 329
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 330
    .line 331
    iput v14, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 332
    .line 333
    iput v1, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 334
    .line 335
    invoke-virtual {v13, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    .line 337
    .line 338
    goto :goto_4

    .line 339
    :cond_6
    const/4 v13, 0x4

    .line 340
    if-ne v12, v13, :cond_7

    .line 341
    .line 342
    iget-object v13, v0, Ln2;->h:Landroid/widget/Button;

    .line 343
    .line 344
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 345
    .line 346
    .line 347
    move-result-object v15

    .line 348
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 349
    .line 350
    iput v14, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 351
    .line 352
    iput v1, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 353
    .line 354
    invoke-virtual {v13, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    .line 356
    .line 357
    :cond_7
    :goto_4
    if-eqz v12, :cond_8

    .line 358
    .line 359
    goto :goto_5

    .line 360
    :cond_8
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 361
    .line 362
    .line 363
    :goto_5
    iget-object v1, v0, Ln2;->n:Landroid/view/View;

    .line 364
    .line 365
    if-eqz v1, :cond_9

    .line 366
    .line 367
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 368
    .line 369
    const/4 v12, -0x2

    .line 370
    invoke-direct {v1, v10, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 371
    .line 372
    .line 373
    iget-object v12, v0, Ln2;->n:Landroid/view/View;

    .line 374
    .line 375
    invoke-virtual {v4, v12, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 376
    .line 377
    .line 378
    sget v1, Lfv;->title_template:I

    .line 379
    .line 380
    invoke-virtual {v2, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 385
    .line 386
    .line 387
    goto :goto_6

    .line 388
    :cond_9
    const v1, 0x1020006

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    check-cast v1, Landroid/widget/ImageView;

    .line 396
    .line 397
    iput-object v1, v0, Ln2;->k:Landroid/widget/ImageView;

    .line 398
    .line 399
    iget-object v1, v0, Ln2;->d:Ljava/lang/CharSequence;

    .line 400
    .line 401
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-nez v1, :cond_b

    .line 406
    .line 407
    iget-boolean v1, v0, Ln2;->u:Z

    .line 408
    .line 409
    if-eqz v1, :cond_b

    .line 410
    .line 411
    sget v1, Lfv;->alertTitle:I

    .line 412
    .line 413
    invoke-virtual {v2, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    check-cast v1, Landroid/widget/TextView;

    .line 418
    .line 419
    iput-object v1, v0, Ln2;->l:Landroid/widget/TextView;

    .line 420
    .line 421
    iget-object v12, v0, Ln2;->d:Ljava/lang/CharSequence;

    .line 422
    .line 423
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    .line 425
    .line 426
    iget-object v1, v0, Ln2;->j:Landroid/graphics/drawable/Drawable;

    .line 427
    .line 428
    if-eqz v1, :cond_a

    .line 429
    .line 430
    iget-object v12, v0, Ln2;->k:Landroid/widget/ImageView;

    .line 431
    .line 432
    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 433
    .line 434
    .line 435
    goto :goto_6

    .line 436
    :cond_a
    iget-object v1, v0, Ln2;->l:Landroid/widget/TextView;

    .line 437
    .line 438
    iget-object v12, v0, Ln2;->k:Landroid/widget/ImageView;

    .line 439
    .line 440
    invoke-virtual {v12}, Landroid/view/View;->getPaddingLeft()I

    .line 441
    .line 442
    .line 443
    move-result v12

    .line 444
    iget-object v13, v0, Ln2;->k:Landroid/widget/ImageView;

    .line 445
    .line 446
    invoke-virtual {v13}, Landroid/view/View;->getPaddingTop()I

    .line 447
    .line 448
    .line 449
    move-result v13

    .line 450
    iget-object v15, v0, Ln2;->k:Landroid/widget/ImageView;

    .line 451
    .line 452
    invoke-virtual {v15}, Landroid/view/View;->getPaddingRight()I

    .line 453
    .line 454
    .line 455
    move-result v15

    .line 456
    iget-object v8, v0, Ln2;->k:Landroid/widget/ImageView;

    .line 457
    .line 458
    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    .line 459
    .line 460
    .line 461
    move-result v8

    .line 462
    invoke-virtual {v1, v12, v13, v15, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 463
    .line 464
    .line 465
    iget-object v1, v0, Ln2;->k:Landroid/widget/ImageView;

    .line 466
    .line 467
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 468
    .line 469
    .line 470
    goto :goto_6

    .line 471
    :cond_b
    sget v1, Lfv;->title_template:I

    .line 472
    .line 473
    invoke-virtual {v2, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 478
    .line 479
    .line 480
    iget-object v1, v0, Ln2;->k:Landroid/widget/ImageView;

    .line 481
    .line 482
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 486
    .line 487
    .line 488
    :goto_6
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    if-eq v1, v7, :cond_c

    .line 493
    .line 494
    move v1, v14

    .line 495
    goto :goto_7

    .line 496
    :cond_c
    move v1, v9

    .line 497
    :goto_7
    if-eqz v4, :cond_d

    .line 498
    .line 499
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 500
    .line 501
    .line 502
    move-result v3

    .line 503
    if-eq v3, v7, :cond_d

    .line 504
    .line 505
    move v3, v14

    .line 506
    goto :goto_8

    .line 507
    :cond_d
    move v3, v9

    .line 508
    :goto_8
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 509
    .line 510
    .line 511
    move-result v6

    .line 512
    if-eq v6, v7, :cond_e

    .line 513
    .line 514
    move v6, v14

    .line 515
    goto :goto_9

    .line 516
    :cond_e
    move v6, v9

    .line 517
    :goto_9
    if-nez v6, :cond_f

    .line 518
    .line 519
    sget v7, Lfv;->textSpacerNoButtons:I

    .line 520
    .line 521
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 522
    .line 523
    .line 524
    move-result-object v7

    .line 525
    if-eqz v7, :cond_f

    .line 526
    .line 527
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 528
    .line 529
    .line 530
    :cond_f
    if-eqz v3, :cond_12

    .line 531
    .line 532
    iget-object v7, v0, Ln2;->i:Landroidx/core/widget/NestedScrollView;

    .line 533
    .line 534
    if-eqz v7, :cond_10

    .line 535
    .line 536
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 537
    .line 538
    .line 539
    :cond_10
    iget-object v7, v0, Ln2;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 540
    .line 541
    if-eqz v7, :cond_11

    .line 542
    .line 543
    sget v7, Lfv;->titleDividerNoCustom:I

    .line 544
    .line 545
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 546
    .line 547
    .line 548
    move-result-object v8

    .line 549
    goto :goto_a

    .line 550
    :cond_11
    const/4 v8, 0x0

    .line 551
    :goto_a
    if-eqz v8, :cond_13

    .line 552
    .line 553
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 554
    .line 555
    .line 556
    goto :goto_b

    .line 557
    :cond_12
    sget v4, Lfv;->textSpacerNoTitle:I

    .line 558
    .line 559
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    if-eqz v4, :cond_13

    .line 564
    .line 565
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 566
    .line 567
    .line 568
    :cond_13
    :goto_b
    iget-object v4, v0, Ln2;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 569
    .line 570
    if-eqz v4, :cond_17

    .line 571
    .line 572
    if-eqz v6, :cond_14

    .line 573
    .line 574
    if-nez v3, :cond_17

    .line 575
    .line 576
    :cond_14
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    .line 577
    .line 578
    .line 579
    move-result v7

    .line 580
    if-eqz v3, :cond_15

    .line 581
    .line 582
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 583
    .line 584
    .line 585
    move-result v8

    .line 586
    goto :goto_c

    .line 587
    :cond_15
    iget v8, v4, Landroidx/appcompat/app/AlertController$RecycleListView;->a:I

    .line 588
    .line 589
    :goto_c
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    .line 590
    .line 591
    .line 592
    move-result v12

    .line 593
    if-eqz v6, :cond_16

    .line 594
    .line 595
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 596
    .line 597
    .line 598
    move-result v13

    .line 599
    goto :goto_d

    .line 600
    :cond_16
    iget v13, v4, Landroidx/appcompat/app/AlertController$RecycleListView;->b:I

    .line 601
    .line 602
    :goto_d
    invoke-virtual {v4, v7, v8, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 603
    .line 604
    .line 605
    :cond_17
    if-nez v1, :cond_1b

    .line 606
    .line 607
    iget-object v1, v0, Ln2;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 608
    .line 609
    if-eqz v1, :cond_18

    .line 610
    .line 611
    goto :goto_e

    .line 612
    :cond_18
    iget-object v1, v0, Ln2;->i:Landroidx/core/widget/NestedScrollView;

    .line 613
    .line 614
    :goto_e
    if-eqz v1, :cond_1b

    .line 615
    .line 616
    if-eqz v6, :cond_19

    .line 617
    .line 618
    move v9, v11

    .line 619
    :cond_19
    or-int/2addr v3, v9

    .line 620
    sget v4, Lfv;->scrollIndicatorUp:I

    .line 621
    .line 622
    invoke-virtual {v2, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 623
    .line 624
    .line 625
    move-result-object v4

    .line 626
    sget v6, Lfv;->scrollIndicatorDown:I

    .line 627
    .line 628
    invoke-virtual {v2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    sget-object v6, Lw50;->a:Ljava/util/WeakHashMap;

    .line 633
    .line 634
    const/4 v6, 0x3

    .line 635
    invoke-static {v1, v3, v6}, Lm50;->d(Landroid/view/View;II)V

    .line 636
    .line 637
    .line 638
    if-eqz v4, :cond_1a

    .line 639
    .line 640
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 641
    .line 642
    .line 643
    :cond_1a
    if-eqz v2, :cond_1b

    .line 644
    .line 645
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 646
    .line 647
    .line 648
    :cond_1b
    iget-object v1, v0, Ln2;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 649
    .line 650
    if-eqz v1, :cond_1c

    .line 651
    .line 652
    iget-object v2, v0, Ln2;->o:Landroid/widget/ListAdapter;

    .line 653
    .line 654
    if-eqz v2, :cond_1c

    .line 655
    .line 656
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 657
    .line 658
    .line 659
    iget v0, v0, Ln2;->p:I

    .line 660
    .line 661
    if-le v0, v10, :cond_1c

    .line 662
    .line 663
    invoke-virtual {v1, v0, v14}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 667
    .line 668
    .line 669
    :cond_1c
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp2;->f:Ln2;

    .line 2
    .line 3
    iget-object v0, v0, Ln2;->i:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->i(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp2;->f:Ln2;

    .line 2
    .line 3
    iget-object v0, v0, Ln2;->i:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->i(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Leb;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lp2;->d()Ls3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lg4;

    .line 9
    .line 10
    invoke-virtual {p0}, Lg4;->y()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lg4;->n:Lo70;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lo70;->t:Z

    .line 19
    .line 20
    iget-object p0, p0, Lo70;->s:Ln60;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Ln60;->a()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lp2;->f()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lp2;->d()Ls3;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Ls3;->f(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .line 12
    invoke-virtual {p0}, Lp2;->f()V

    .line 13
    invoke-virtual {p0}, Lp2;->d()Ls3;

    move-result-object p0

    invoke-virtual {p0, p1}, Ls3;->g(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 14
    invoke-virtual {p0}, Lp2;->f()V

    .line 15
    invoke-virtual {p0}, Lp2;->d()Ls3;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ls3;->i(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lp2;->d()Ls3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Ls3;->j(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lp2;->i(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p0, p0, Lp2;->f:Ln2;

    iput-object p1, p0, Ln2;->d:Ljava/lang/CharSequence;

    .line 22
    iget-object p0, p0, Ln2;->l:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
