.class public final Lcx;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:Lbx;

.field public final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcx;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcx;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcx;->b:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcx;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcx;->d:Ljava/util/List;

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    iput p1, p0, Lcx;->e:I

    .line 31
    .line 32
    iput p1, p0, Lcx;->f:I

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lkx;Z)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->j(Lkx;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lkx;->a:Landroid/view/View;

    .line 5
    .line 6
    iget-object v1, p0, Lcx;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->j0:Lmx;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget-object v2, v2, Lmx;->e:Llx;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v2, v2, Llx;->e:Ljava/util/WeakHashMap;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, La0;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v2, v3

    .line 27
    :goto_0
    invoke-static {v0, v2}, Lw50;->l(Landroid/view/View;La0;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    if-eqz p2, :cond_2

    .line 31
    .line 32
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->f:Ls4;

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Ls4;->H(Lkx;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iput-object v3, p1, Lkx;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcx;->c()Lbx;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget p2, p1, Lkx;->f:I

    .line 51
    .line 52
    invoke-virtual {p0, p2}, Lbx;->a(I)Lax;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v0, v0, Lax;->a:Ljava/util/ArrayList;

    .line 57
    .line 58
    iget-object p0, p0, Lbx;->a:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Lax;

    .line 65
    .line 66
    iget p0, p0, Lax;->b:I

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-gt p0, p2, :cond_3

    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    invoke-virtual {p1}, Lkx;->m()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final b(I)I
    .locals 4

    .line 1
    iget-object p0, p0, Lcx;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lhx;->b()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge p1, v1, :cond_1

    .line 12
    .line 13
    iget-boolean v0, v0, Lhx;->g:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return p1

    .line 18
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->d:Lh2;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, v0}, Lh2;->e(II)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 27
    .line 28
    invoke-virtual {v0}, Lhx;->b()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v3, "invalid position "

    .line 39
    .line 40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, ". State item count is "

    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v1
.end method

.method public final c()Lbx;
    .locals 2

    .line 1
    iget-object v0, p0, Lcx;->g:Lbx;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lbx;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lbx;->a:Landroid/util/SparseArray;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, v0, Lbx;->b:I

    .line 19
    .line 20
    iput-object v0, p0, Lcx;->g:Lbx;

    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lcx;->g:Lbx;

    .line 23
    .line 24
    return-object p0
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcx;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcx;->e(I)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->s0:[I

    .line 21
    .line 22
    iget-object p0, p0, Lcx;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->b0:Lcl;

    .line 25
    .line 26
    iget-object v0, p0, Lcl;->c:[I

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/4 v1, -0x1

    .line 31
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 32
    .line 33
    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcl;->d:I

    .line 36
    .line 37
    return-void
.end method

.method public final e(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcx;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lkx;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {p0, v1, v2}, Lcx;->a(Lkx;Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final f(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lkx;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcx;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Lkx;->i()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, v0, Lkx;->n:Lcx;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcx;->j(Lkx;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v0}, Lkx;->p()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget p1, v0, Lkx;->j:I

    .line 36
    .line 37
    and-int/lit8 p1, p1, -0x21

    .line 38
    .line 39
    iput p1, v0, Lkx;->j:I

    .line 40
    .line 41
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcx;->g(Lkx;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 45
    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Lkx;->g()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_3

    .line 53
    .line 54
    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lsw;->d(Lkx;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-void
.end method

.method public final g(Lkx;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcx;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->b0:Lcl;

    .line 4
    .line 5
    invoke-virtual {p1}, Lkx;->i()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, p1, Lkx;->a:Landroid/view/View;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-nez v2, :cond_f

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto/16 :goto_9

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Lkx;->j()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_e

    .line 28
    .line 29
    invoke-virtual {p1}, Lkx;->o()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_d

    .line 34
    .line 35
    iget v2, p1, Lkx;->j:I

    .line 36
    .line 37
    and-int/lit8 v2, v2, 0x10

    .line 38
    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    sget-object v2, Lw50;->a:Ljava/util/WeakHashMap;

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/view/View;->hasTransientState()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    move v2, v5

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v2, v4

    .line 52
    :goto_0
    invoke-virtual {p1}, Lkx;->g()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_b

    .line 57
    .line 58
    iget v3, p0, Lcx;->f:I

    .line 59
    .line 60
    if-lez v3, :cond_9

    .line 61
    .line 62
    iget v3, p1, Lkx;->j:I

    .line 63
    .line 64
    and-int/lit16 v3, v3, 0x20e

    .line 65
    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_2
    iget-object v3, p0, Lcx;->c:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    iget v7, p0, Lcx;->f:I

    .line 76
    .line 77
    if-lt v6, v7, :cond_3

    .line 78
    .line 79
    if-lez v6, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0, v4}, Lcx;->e(I)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v6, v6, -0x1

    .line 85
    .line 86
    :cond_3
    sget-object v7, Landroidx/recyclerview/widget/RecyclerView;->s0:[I

    .line 87
    .line 88
    if-lez v6, :cond_8

    .line 89
    .line 90
    iget v7, p1, Lkx;->c:I

    .line 91
    .line 92
    iget-object v8, v1, Lcl;->c:[I

    .line 93
    .line 94
    if-eqz v8, :cond_5

    .line 95
    .line 96
    iget v8, v1, Lcl;->d:I

    .line 97
    .line 98
    mul-int/lit8 v8, v8, 0x2

    .line 99
    .line 100
    move v9, v4

    .line 101
    :goto_1
    if-ge v9, v8, :cond_5

    .line 102
    .line 103
    iget-object v10, v1, Lcl;->c:[I

    .line 104
    .line 105
    aget v10, v10, v9

    .line 106
    .line 107
    if-ne v10, v7, :cond_4

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_4
    add-int/lit8 v9, v9, 0x2

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    add-int/lit8 v6, v6, -0x1

    .line 114
    .line 115
    :goto_2
    if-ltz v6, :cond_7

    .line 116
    .line 117
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    check-cast v7, Lkx;

    .line 122
    .line 123
    iget v7, v7, Lkx;->c:I

    .line 124
    .line 125
    iget-object v8, v1, Lcl;->c:[I

    .line 126
    .line 127
    if-eqz v8, :cond_7

    .line 128
    .line 129
    iget v8, v1, Lcl;->d:I

    .line 130
    .line 131
    mul-int/lit8 v8, v8, 0x2

    .line 132
    .line 133
    move v9, v4

    .line 134
    :goto_3
    if-ge v9, v8, :cond_7

    .line 135
    .line 136
    iget-object v10, v1, Lcl;->c:[I

    .line 137
    .line 138
    aget v10, v10, v9

    .line 139
    .line 140
    if-ne v10, v7, :cond_6

    .line 141
    .line 142
    add-int/lit8 v6, v6, -0x1

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_6
    add-int/lit8 v9, v9, 0x2

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_7
    add-int/2addr v6, v5

    .line 149
    :cond_8
    :goto_4
    invoke-virtual {v3, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    move v1, v5

    .line 153
    goto :goto_6

    .line 154
    :cond_9
    :goto_5
    move v1, v4

    .line 155
    :goto_6
    if-nez v1, :cond_a

    .line 156
    .line 157
    invoke-virtual {p0, p1, v5}, Lcx;->a(Lkx;Z)V

    .line 158
    .line 159
    .line 160
    :goto_7
    move v4, v1

    .line 161
    goto :goto_8

    .line 162
    :cond_a
    move v5, v4

    .line 163
    goto :goto_7

    .line 164
    :cond_b
    move v5, v4

    .line 165
    :goto_8
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView;->f:Ls4;

    .line 166
    .line 167
    invoke-virtual {p0, p1}, Ls4;->H(Lkx;)V

    .line 168
    .line 169
    .line 170
    if-nez v4, :cond_c

    .line 171
    .line 172
    if-nez v5, :cond_c

    .line 173
    .line 174
    if-eqz v2, :cond_c

    .line 175
    .line 176
    const/4 p0, 0x0

    .line 177
    iput-object p0, p1, Lkx;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 178
    .line 179
    :cond_c
    return-void

    .line 180
    :cond_d
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    const-string p1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    .line 185
    .line 186
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-static {p0}, Lg9;->j(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 195
    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    .line 199
    .line 200
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p0

    .line 221
    :cond_f
    :goto_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 222
    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v2, "Scrapped or attached views may not be recycled. isScrap:"

    .line 226
    .line 227
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Lkx;->i()Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string p1, " isAttached:"

    .line 238
    .line 239
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    if-eqz p1, :cond_10

    .line 247
    .line 248
    move v4, v5

    .line 249
    :cond_10
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw p0
.end method

.method public final h(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lkx;->j:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0xc

    .line 8
    .line 9
    iget-object v1, p0, Lcx;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lkx;->k()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1}, Lkx;->c()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v0, Lhe;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    iget-boolean v0, v0, Lhe;->g:Z

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1}, Lkx;->f()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcx;->b:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcx;->b:Ljava/util/ArrayList;

    .line 57
    .line 58
    :cond_2
    iput-object p0, p1, Lkx;->n:Lcx;

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p1, Lkx;->o:Z

    .line 62
    .line 63
    iget-object p0, p0, Lcx;->b:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lkx;->f()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    invoke-virtual {p1}, Lkx;->h()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_5

    .line 80
    .line 81
    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 82
    .line 83
    iget-boolean v0, v0, Low;->b:Z

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const-string p1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    .line 93
    .line 94
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {p0}, Lg9;->j(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_5
    :goto_1
    iput-object p0, p1, Lkx;->n:Lcx;

    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p1, Lkx;->o:Z

    .line 106
    .line 107
    iget-object p0, p0, Lcx;->a:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final i(IJ)Lkx;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcx;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->c0:Lhx;

    .line 8
    .line 9
    if-ltz v1, :cond_47

    .line 10
    .line 11
    invoke-virtual {v3}, Lhx;->b()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ge v1, v4, :cond_47

    .line 16
    .line 17
    iget-boolean v4, v3, Lhx;->g:Z

    .line 18
    .line 19
    const/16 v5, 0x20

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    if-eqz v4, :cond_5

    .line 24
    .line 25
    iget-object v4, v0, Lcx;->b:Ljava/util/ArrayList;

    .line 26
    .line 27
    if-eqz v4, :cond_4

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    move v9, v8

    .line 37
    :goto_0
    if-ge v9, v4, :cond_2

    .line 38
    .line 39
    iget-object v10, v0, Lcx;->b:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    check-cast v10, Lkx;

    .line 46
    .line 47
    invoke-virtual {v10}, Lkx;->p()Z

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    if-nez v11, :cond_1

    .line 52
    .line 53
    invoke-virtual {v10}, Lkx;->b()I

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    if-ne v11, v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v10, v5}, Lkx;->a(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 67
    .line 68
    iget-boolean v9, v9, Low;->b:Z

    .line 69
    .line 70
    if-eqz v9, :cond_4

    .line 71
    .line 72
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->d:Lh2;

    .line 73
    .line 74
    invoke-virtual {v9, v1, v8}, Lh2;->e(II)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-lez v9, :cond_4

    .line 79
    .line 80
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 81
    .line 82
    invoke-virtual {v10}, Low;->a()I

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    if-ge v9, v10, :cond_4

    .line 87
    .line 88
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 89
    .line 90
    invoke-virtual {v10, v9}, Low;->b(I)J

    .line 91
    .line 92
    .line 93
    move-result-wide v9

    .line 94
    move v11, v8

    .line 95
    :goto_1
    if-ge v11, v4, :cond_4

    .line 96
    .line 97
    iget-object v12, v0, Lcx;->b:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    check-cast v12, Lkx;

    .line 104
    .line 105
    invoke-virtual {v12}, Lkx;->p()Z

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    if-nez v13, :cond_3

    .line 110
    .line 111
    iget-wide v13, v12, Lkx;->e:J

    .line 112
    .line 113
    cmp-long v13, v13, v9

    .line 114
    .line 115
    if-nez v13, :cond_3

    .line 116
    .line 117
    invoke-virtual {v12, v5}, Lkx;->a(I)V

    .line 118
    .line 119
    .line 120
    move-object v10, v12

    .line 121
    goto :goto_3

    .line 122
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    :goto_2
    move-object v10, v6

    .line 126
    :goto_3
    if-eqz v10, :cond_6

    .line 127
    .line 128
    const/4 v4, 0x1

    .line 129
    goto :goto_4

    .line 130
    :cond_5
    move-object v10, v6

    .line 131
    :cond_6
    move v4, v8

    .line 132
    :goto_4
    iget-object v9, v0, Lcx;->a:Ljava/util/ArrayList;

    .line 133
    .line 134
    iget-object v11, v0, Lcx;->c:Ljava/util/ArrayList;

    .line 135
    .line 136
    if-nez v10, :cond_1c

    .line 137
    .line 138
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    move v12, v8

    .line 143
    :goto_5
    if-ge v12, v10, :cond_9

    .line 144
    .line 145
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    check-cast v13, Lkx;

    .line 150
    .line 151
    invoke-virtual {v13}, Lkx;->p()Z

    .line 152
    .line 153
    .line 154
    move-result v14

    .line 155
    if-nez v14, :cond_8

    .line 156
    .line 157
    invoke-virtual {v13}, Lkx;->b()I

    .line 158
    .line 159
    .line 160
    move-result v14

    .line 161
    if-ne v14, v1, :cond_8

    .line 162
    .line 163
    invoke-virtual {v13}, Lkx;->f()Z

    .line 164
    .line 165
    .line 166
    move-result v14

    .line 167
    if-nez v14, :cond_8

    .line 168
    .line 169
    iget-boolean v14, v3, Lhx;->g:Z

    .line 170
    .line 171
    if-nez v14, :cond_7

    .line 172
    .line 173
    invoke-virtual {v13}, Lkx;->h()Z

    .line 174
    .line 175
    .line 176
    move-result v14

    .line 177
    if-nez v14, :cond_8

    .line 178
    .line 179
    :cond_7
    invoke-virtual {v13, v5}, Lkx;->a(I)V

    .line 180
    .line 181
    .line 182
    move-object v10, v13

    .line 183
    const/16 v16, 0x1

    .line 184
    .line 185
    goto/16 :goto_b

    .line 186
    .line 187
    :cond_8
    add-int/lit8 v12, v12, 0x1

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_9
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->e:Ly2;

    .line 191
    .line 192
    iget-object v10, v10, Ly2;->d:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v10, Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result v12

    .line 200
    move v13, v8

    .line 201
    :goto_6
    if-ge v13, v12, :cond_b

    .line 202
    .line 203
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v14

    .line 207
    check-cast v14, Landroid/view/View;

    .line 208
    .line 209
    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 210
    .line 211
    .line 212
    move-result-object v15

    .line 213
    const/16 v16, 0x1

    .line 214
    .line 215
    invoke-virtual {v15}, Lkx;->b()I

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    if-ne v7, v1, :cond_a

    .line 220
    .line 221
    invoke-virtual {v15}, Lkx;->f()Z

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    if-nez v7, :cond_a

    .line 226
    .line 227
    invoke-virtual {v15}, Lkx;->h()Z

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    if-nez v7, :cond_a

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_a
    add-int/lit8 v13, v13, 0x1

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_b
    const/16 v16, 0x1

    .line 238
    .line 239
    move-object v14, v6

    .line 240
    :goto_7
    if-eqz v14, :cond_11

    .line 241
    .line 242
    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->e:Ly2;

    .line 247
    .line 248
    iget-object v12, v10, Ly2;->c:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v12, Lf9;

    .line 251
    .line 252
    iget-object v13, v10, Ly2;->b:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v13, Lnw;

    .line 255
    .line 256
    iget-object v13, v13, Lnw;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 257
    .line 258
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 259
    .line 260
    .line 261
    move-result v13

    .line 262
    if-ltz v13, :cond_10

    .line 263
    .line 264
    invoke-virtual {v12, v13}, Lf9;->d(I)Z

    .line 265
    .line 266
    .line 267
    move-result v15

    .line 268
    if-eqz v15, :cond_f

    .line 269
    .line 270
    invoke-virtual {v12, v13}, Lf9;->a(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v10, v14}, Ly2;->t(Landroid/view/View;)V

    .line 274
    .line 275
    .line 276
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->e:Ly2;

    .line 277
    .line 278
    iget-object v12, v10, Ly2;->c:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v12, Lf9;

    .line 281
    .line 282
    iget-object v10, v10, Ly2;->b:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v10, Lnw;

    .line 285
    .line 286
    iget-object v10, v10, Lnw;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 287
    .line 288
    invoke-virtual {v10, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 289
    .line 290
    .line 291
    move-result v10

    .line 292
    const/4 v13, -0x1

    .line 293
    if-ne v10, v13, :cond_c

    .line 294
    .line 295
    goto :goto_8

    .line 296
    :cond_c
    invoke-virtual {v12, v10}, Lf9;->d(I)Z

    .line 297
    .line 298
    .line 299
    move-result v15

    .line 300
    if-eqz v15, :cond_d

    .line 301
    .line 302
    :goto_8
    move v10, v13

    .line 303
    goto :goto_9

    .line 304
    :cond_d
    invoke-virtual {v12, v10}, Lf9;->b(I)I

    .line 305
    .line 306
    .line 307
    move-result v12

    .line 308
    sub-int/2addr v10, v12

    .line 309
    :goto_9
    if-eq v10, v13, :cond_e

    .line 310
    .line 311
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->e:Ly2;

    .line 312
    .line 313
    invoke-virtual {v12, v10}, Ly2;->c(I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v14}, Lcx;->h(Landroid/view/View;)V

    .line 317
    .line 318
    .line 319
    const/16 v10, 0x2020

    .line 320
    .line 321
    invoke-virtual {v7, v10}, Lkx;->a(I)V

    .line 322
    .line 323
    .line 324
    move-object v10, v7

    .line 325
    goto :goto_b

    .line 326
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 327
    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    const-string v3, "layout index should not be -1 after unhiding a view:"

    .line 331
    .line 332
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    throw v0

    .line 353
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    .line 354
    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    const-string v2, "trying to unhide a view that was not hidden"

    .line 358
    .line 359
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    throw v0

    .line 373
    :cond_10
    const-string v0, "view is not a child, cannot hide "

    .line 374
    .line 375
    invoke-static {v14, v0}, Lg9;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    return-object v6

    .line 379
    :cond_11
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 380
    .line 381
    .line 382
    move-result v7

    .line 383
    move v10, v8

    .line 384
    :goto_a
    if-ge v10, v7, :cond_13

    .line 385
    .line 386
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v12

    .line 390
    check-cast v12, Lkx;

    .line 391
    .line 392
    invoke-virtual {v12}, Lkx;->f()Z

    .line 393
    .line 394
    .line 395
    move-result v13

    .line 396
    if-nez v13, :cond_12

    .line 397
    .line 398
    invoke-virtual {v12}, Lkx;->b()I

    .line 399
    .line 400
    .line 401
    move-result v13

    .line 402
    if-ne v13, v1, :cond_12

    .line 403
    .line 404
    invoke-virtual {v12}, Lkx;->d()Z

    .line 405
    .line 406
    .line 407
    move-result v13

    .line 408
    if-nez v13, :cond_12

    .line 409
    .line 410
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-object v10, v12

    .line 414
    goto :goto_b

    .line 415
    :cond_12
    add-int/lit8 v10, v10, 0x1

    .line 416
    .line 417
    goto :goto_a

    .line 418
    :cond_13
    move-object v10, v6

    .line 419
    :goto_b
    if-eqz v10, :cond_1d

    .line 420
    .line 421
    invoke-virtual {v10}, Lkx;->h()Z

    .line 422
    .line 423
    .line 424
    move-result v7

    .line 425
    if-eqz v7, :cond_14

    .line 426
    .line 427
    iget-boolean v7, v3, Lhx;->g:Z

    .line 428
    .line 429
    goto :goto_c

    .line 430
    :cond_14
    iget v7, v10, Lkx;->c:I

    .line 431
    .line 432
    if-ltz v7, :cond_1b

    .line 433
    .line 434
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 435
    .line 436
    invoke-virtual {v12}, Low;->a()I

    .line 437
    .line 438
    .line 439
    move-result v12

    .line 440
    if-ge v7, v12, :cond_1b

    .line 441
    .line 442
    iget-boolean v7, v3, Lhx;->g:Z

    .line 443
    .line 444
    if-nez v7, :cond_16

    .line 445
    .line 446
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 447
    .line 448
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    .line 450
    .line 451
    iget v7, v10, Lkx;->f:I

    .line 452
    .line 453
    if-eqz v7, :cond_16

    .line 454
    .line 455
    :cond_15
    move v7, v8

    .line 456
    goto :goto_c

    .line 457
    :cond_16
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 458
    .line 459
    iget-boolean v12, v7, Low;->b:Z

    .line 460
    .line 461
    if-eqz v12, :cond_17

    .line 462
    .line 463
    iget-wide v12, v10, Lkx;->e:J

    .line 464
    .line 465
    iget v14, v10, Lkx;->c:I

    .line 466
    .line 467
    invoke-virtual {v7, v14}, Low;->b(I)J

    .line 468
    .line 469
    .line 470
    move-result-wide v14

    .line 471
    cmp-long v7, v12, v14

    .line 472
    .line 473
    if-nez v7, :cond_15

    .line 474
    .line 475
    :cond_17
    move/from16 v7, v16

    .line 476
    .line 477
    :goto_c
    if-nez v7, :cond_1a

    .line 478
    .line 479
    const/4 v7, 0x4

    .line 480
    invoke-virtual {v10, v7}, Lkx;->a(I)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v10}, Lkx;->i()Z

    .line 484
    .line 485
    .line 486
    move-result v7

    .line 487
    if-eqz v7, :cond_18

    .line 488
    .line 489
    iget-object v7, v10, Lkx;->a:Landroid/view/View;

    .line 490
    .line 491
    invoke-virtual {v2, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 492
    .line 493
    .line 494
    iget-object v7, v10, Lkx;->n:Lcx;

    .line 495
    .line 496
    invoke-virtual {v7, v10}, Lcx;->j(Lkx;)V

    .line 497
    .line 498
    .line 499
    goto :goto_d

    .line 500
    :cond_18
    invoke-virtual {v10}, Lkx;->p()Z

    .line 501
    .line 502
    .line 503
    move-result v7

    .line 504
    if-eqz v7, :cond_19

    .line 505
    .line 506
    iget v7, v10, Lkx;->j:I

    .line 507
    .line 508
    and-int/lit8 v7, v7, -0x21

    .line 509
    .line 510
    iput v7, v10, Lkx;->j:I

    .line 511
    .line 512
    :cond_19
    :goto_d
    invoke-virtual {v0, v10}, Lcx;->g(Lkx;)V

    .line 513
    .line 514
    .line 515
    move-object v10, v6

    .line 516
    goto :goto_e

    .line 517
    :cond_1a
    move/from16 v4, v16

    .line 518
    .line 519
    goto :goto_e

    .line 520
    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 521
    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    .line 525
    .line 526
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v2

    .line 536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    throw v0

    .line 547
    :cond_1c
    const/16 v16, 0x1

    .line 548
    .line 549
    :cond_1d
    :goto_e
    const-wide/16 v17, 0x0

    .line 550
    .line 551
    const-wide v19, 0x7fffffffffffffffL

    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    if-nez v10, :cond_32

    .line 557
    .line 558
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->d:Lh2;

    .line 559
    .line 560
    invoke-virtual {v7, v1, v8}, Lh2;->e(II)I

    .line 561
    .line 562
    .line 563
    move-result v7

    .line 564
    if-ltz v7, :cond_31

    .line 565
    .line 566
    const-wide/16 v21, 0x3

    .line 567
    .line 568
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 569
    .line 570
    invoke-virtual {v12}, Low;->a()I

    .line 571
    .line 572
    .line 573
    move-result v12

    .line 574
    if-ge v7, v12, :cond_31

    .line 575
    .line 576
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 577
    .line 578
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 579
    .line 580
    .line 581
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 582
    .line 583
    iget-boolean v13, v12, Low;->b:Z

    .line 584
    .line 585
    if-eqz v13, :cond_25

    .line 586
    .line 587
    invoke-virtual {v12, v7}, Low;->b(I)J

    .line 588
    .line 589
    .line 590
    move-result-wide v12

    .line 591
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 592
    .line 593
    .line 594
    move-result v10

    .line 595
    add-int/lit8 v10, v10, -0x1

    .line 596
    .line 597
    :goto_f
    if-ltz v10, :cond_21

    .line 598
    .line 599
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v23

    .line 603
    const-wide/16 v24, 0x4

    .line 604
    .line 605
    move-object/from16 v14, v23

    .line 606
    .line 607
    check-cast v14, Lkx;

    .line 608
    .line 609
    move/from16 v23, v7

    .line 610
    .line 611
    iget-wide v6, v14, Lkx;->e:J

    .line 612
    .line 613
    iget-object v15, v14, Lkx;->a:Landroid/view/View;

    .line 614
    .line 615
    cmp-long v6, v6, v12

    .line 616
    .line 617
    if-nez v6, :cond_20

    .line 618
    .line 619
    invoke-virtual {v14}, Lkx;->p()Z

    .line 620
    .line 621
    .line 622
    move-result v6

    .line 623
    if-nez v6, :cond_20

    .line 624
    .line 625
    iget v6, v14, Lkx;->f:I

    .line 626
    .line 627
    if-nez v6, :cond_1f

    .line 628
    .line 629
    invoke-virtual {v14, v5}, Lkx;->a(I)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v14}, Lkx;->h()Z

    .line 633
    .line 634
    .line 635
    move-result v5

    .line 636
    if-eqz v5, :cond_1e

    .line 637
    .line 638
    iget-boolean v5, v3, Lhx;->g:Z

    .line 639
    .line 640
    if-nez v5, :cond_1e

    .line 641
    .line 642
    iget v5, v14, Lkx;->j:I

    .line 643
    .line 644
    and-int/lit8 v5, v5, -0xf

    .line 645
    .line 646
    or-int/lit8 v5, v5, 0x2

    .line 647
    .line 648
    iput v5, v14, Lkx;->j:I

    .line 649
    .line 650
    :cond_1e
    move-object v10, v14

    .line 651
    goto :goto_11

    .line 652
    :cond_1f
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v2, v15, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 656
    .line 657
    .line 658
    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Lkx;

    .line 659
    .line 660
    .line 661
    move-result-object v6

    .line 662
    const/4 v15, 0x0

    .line 663
    iput-object v15, v6, Lkx;->n:Lcx;

    .line 664
    .line 665
    iput-boolean v8, v6, Lkx;->o:Z

    .line 666
    .line 667
    iget v7, v6, Lkx;->j:I

    .line 668
    .line 669
    and-int/lit8 v7, v7, -0x21

    .line 670
    .line 671
    iput v7, v6, Lkx;->j:I

    .line 672
    .line 673
    invoke-virtual {v0, v6}, Lcx;->g(Lkx;)V

    .line 674
    .line 675
    .line 676
    :cond_20
    add-int/lit8 v10, v10, -0x1

    .line 677
    .line 678
    move/from16 v7, v23

    .line 679
    .line 680
    const/4 v6, 0x0

    .line 681
    goto :goto_f

    .line 682
    :cond_21
    move/from16 v23, v7

    .line 683
    .line 684
    const-wide/16 v24, 0x4

    .line 685
    .line 686
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 687
    .line 688
    .line 689
    move-result v5

    .line 690
    add-int/lit8 v5, v5, -0x1

    .line 691
    .line 692
    :goto_10
    if-ltz v5, :cond_23

    .line 693
    .line 694
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v6

    .line 698
    check-cast v6, Lkx;

    .line 699
    .line 700
    iget-wide v9, v6, Lkx;->e:J

    .line 701
    .line 702
    cmp-long v7, v9, v12

    .line 703
    .line 704
    if-nez v7, :cond_24

    .line 705
    .line 706
    invoke-virtual {v6}, Lkx;->d()Z

    .line 707
    .line 708
    .line 709
    move-result v7

    .line 710
    if-nez v7, :cond_24

    .line 711
    .line 712
    iget v7, v6, Lkx;->f:I

    .line 713
    .line 714
    if-nez v7, :cond_22

    .line 715
    .line 716
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-object v10, v6

    .line 720
    goto :goto_11

    .line 721
    :cond_22
    invoke-virtual {v0, v5}, Lcx;->e(I)V

    .line 722
    .line 723
    .line 724
    :cond_23
    const/4 v10, 0x0

    .line 725
    goto :goto_11

    .line 726
    :cond_24
    add-int/lit8 v5, v5, -0x1

    .line 727
    .line 728
    goto :goto_10

    .line 729
    :goto_11
    if-eqz v10, :cond_26

    .line 730
    .line 731
    move/from16 v5, v23

    .line 732
    .line 733
    iput v5, v10, Lkx;->c:I

    .line 734
    .line 735
    move/from16 v4, v16

    .line 736
    .line 737
    goto :goto_12

    .line 738
    :cond_25
    const-wide/16 v24, 0x4

    .line 739
    .line 740
    :cond_26
    :goto_12
    if-nez v10, :cond_2a

    .line 741
    .line 742
    invoke-virtual {v0}, Lcx;->c()Lbx;

    .line 743
    .line 744
    .line 745
    move-result-object v5

    .line 746
    iget-object v5, v5, Lbx;->a:Landroid/util/SparseArray;

    .line 747
    .line 748
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object v5

    .line 752
    check-cast v5, Lax;

    .line 753
    .line 754
    if-eqz v5, :cond_28

    .line 755
    .line 756
    iget-object v5, v5, Lax;->a:Ljava/util/ArrayList;

    .line 757
    .line 758
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 759
    .line 760
    .line 761
    move-result v6

    .line 762
    if-nez v6, :cond_28

    .line 763
    .line 764
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 765
    .line 766
    .line 767
    move-result v6

    .line 768
    add-int/lit8 v6, v6, -0x1

    .line 769
    .line 770
    :goto_13
    if-ltz v6, :cond_28

    .line 771
    .line 772
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object v7

    .line 776
    check-cast v7, Lkx;

    .line 777
    .line 778
    invoke-virtual {v7}, Lkx;->d()Z

    .line 779
    .line 780
    .line 781
    move-result v7

    .line 782
    if-nez v7, :cond_27

    .line 783
    .line 784
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v5

    .line 788
    move-object/from16 v26, v5

    .line 789
    .line 790
    check-cast v26, Lkx;

    .line 791
    .line 792
    goto :goto_14

    .line 793
    :cond_27
    add-int/lit8 v6, v6, -0x1

    .line 794
    .line 795
    goto :goto_13

    .line 796
    :cond_28
    const/16 v26, 0x0

    .line 797
    .line 798
    :goto_14
    if-eqz v26, :cond_29

    .line 799
    .line 800
    invoke-virtual/range {v26 .. v26}, Lkx;->m()V

    .line 801
    .line 802
    .line 803
    sget-object v5, Landroidx/recyclerview/widget/RecyclerView;->s0:[I

    .line 804
    .line 805
    :cond_29
    move-object/from16 v10, v26

    .line 806
    .line 807
    :cond_2a
    if-nez v10, :cond_30

    .line 808
    .line 809
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 810
    .line 811
    .line 812
    move-result-wide v5

    .line 813
    cmp-long v7, p2, v19

    .line 814
    .line 815
    if-eqz v7, :cond_2c

    .line 816
    .line 817
    iget-object v7, v0, Lcx;->g:Lbx;

    .line 818
    .line 819
    invoke-virtual {v7, v8}, Lbx;->a(I)Lax;

    .line 820
    .line 821
    .line 822
    move-result-object v7

    .line 823
    iget-wide v9, v7, Lax;->c:J

    .line 824
    .line 825
    cmp-long v7, v9, v17

    .line 826
    .line 827
    if-eqz v7, :cond_2c

    .line 828
    .line 829
    add-long/2addr v9, v5

    .line 830
    cmp-long v7, v9, p2

    .line 831
    .line 832
    if-gez v7, :cond_2b

    .line 833
    .line 834
    goto :goto_15

    .line 835
    :cond_2b
    const/4 v15, 0x0

    .line 836
    return-object v15

    .line 837
    :cond_2c
    :goto_15
    const/4 v15, 0x0

    .line 838
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 839
    .line 840
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 841
    .line 842
    .line 843
    :try_start_0
    const-string v9, "RV CreateView"

    .line 844
    .line 845
    sget v10, Lo30;->a:I

    .line 846
    .line 847
    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v7, v2}, Low;->d(Landroid/view/ViewGroup;)Lkx;

    .line 851
    .line 852
    .line 853
    move-result-object v10

    .line 854
    iget-object v7, v10, Lkx;->a:Landroid/view/View;

    .line 855
    .line 856
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 857
    .line 858
    .line 859
    move-result-object v9

    .line 860
    if-nez v9, :cond_2f

    .line 861
    .line 862
    iput v8, v10, Lkx;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    .line 864
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 865
    .line 866
    .line 867
    sget-object v9, Landroidx/recyclerview/widget/RecyclerView;->s0:[I

    .line 868
    .line 869
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->D(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    .line 870
    .line 871
    .line 872
    move-result-object v7

    .line 873
    if-eqz v7, :cond_2d

    .line 874
    .line 875
    new-instance v9, Ljava/lang/ref/WeakReference;

    .line 876
    .line 877
    invoke-direct {v9, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 878
    .line 879
    .line 880
    iput-object v9, v10, Lkx;->b:Ljava/lang/ref/WeakReference;

    .line 881
    .line 882
    :cond_2d
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 883
    .line 884
    .line 885
    move-result-wide v11

    .line 886
    iget-object v7, v0, Lcx;->g:Lbx;

    .line 887
    .line 888
    sub-long/2addr v11, v5

    .line 889
    invoke-virtual {v7, v8}, Lbx;->a(I)Lax;

    .line 890
    .line 891
    .line 892
    move-result-object v5

    .line 893
    iget-wide v6, v5, Lax;->c:J

    .line 894
    .line 895
    cmp-long v9, v6, v17

    .line 896
    .line 897
    if-nez v9, :cond_2e

    .line 898
    .line 899
    goto :goto_16

    .line 900
    :cond_2e
    div-long v6, v6, v24

    .line 901
    .line 902
    mul-long v6, v6, v21

    .line 903
    .line 904
    div-long v11, v11, v24

    .line 905
    .line 906
    add-long/2addr v11, v6

    .line 907
    :goto_16
    iput-wide v11, v5, Lax;->c:J

    .line 908
    .line 909
    goto :goto_17

    .line 910
    :cond_2f
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 911
    .line 912
    const-string v1, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    .line 913
    .line 914
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 918
    :catchall_0
    move-exception v0

    .line 919
    sget v1, Lo30;->a:I

    .line 920
    .line 921
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 922
    .line 923
    .line 924
    throw v0

    .line 925
    :cond_30
    const/4 v15, 0x0

    .line 926
    goto :goto_17

    .line 927
    :cond_31
    move v5, v7

    .line 928
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 929
    .line 930
    invoke-virtual {v3}, Lhx;->b()I

    .line 931
    .line 932
    .line 933
    move-result v3

    .line 934
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 935
    .line 936
    .line 937
    move-result-object v2

    .line 938
    new-instance v4, Ljava/lang/StringBuilder;

    .line 939
    .line 940
    const-string v6, "Inconsistency detected. Invalid item position "

    .line 941
    .line 942
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 943
    .line 944
    .line 945
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 946
    .line 947
    .line 948
    const-string v1, "(offset:"

    .line 949
    .line 950
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    .line 952
    .line 953
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 954
    .line 955
    .line 956
    const-string v1, ").state:"

    .line 957
    .line 958
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 962
    .line 963
    .line 964
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    .line 966
    .line 967
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    throw v0

    .line 975
    :cond_32
    move-object v15, v6

    .line 976
    const-wide/16 v21, 0x3

    .line 977
    .line 978
    const-wide/16 v24, 0x4

    .line 979
    .line 980
    :goto_17
    iget-object v5, v10, Lkx;->a:Landroid/view/View;

    .line 981
    .line 982
    if-eqz v4, :cond_33

    .line 983
    .line 984
    iget-boolean v6, v3, Lhx;->g:Z

    .line 985
    .line 986
    if-nez v6, :cond_33

    .line 987
    .line 988
    iget v6, v10, Lkx;->j:I

    .line 989
    .line 990
    and-int/lit16 v7, v6, 0x2000

    .line 991
    .line 992
    if-eqz v7, :cond_33

    .line 993
    .line 994
    and-int/lit16 v6, v6, -0x2001

    .line 995
    .line 996
    iput v6, v10, Lkx;->j:I

    .line 997
    .line 998
    iget-boolean v6, v3, Lhx;->j:Z

    .line 999
    .line 1000
    if-eqz v6, :cond_33

    .line 1001
    .line 1002
    invoke-static {v10}, Lsw;->b(Lkx;)V

    .line 1003
    .line 1004
    .line 1005
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->H:Lsw;

    .line 1006
    .line 1007
    invoke-virtual {v10}, Lkx;->c()Ljava/util/List;

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1011
    .line 1012
    .line 1013
    new-instance v6, Lus;

    .line 1014
    .line 1015
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v6, v10}, Lus;->a(Lkx;)V

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v2, v10, v6}, Landroidx/recyclerview/widget/RecyclerView;->T(Lkx;Lus;)V

    .line 1022
    .line 1023
    .line 1024
    :cond_33
    iget-boolean v6, v3, Lhx;->g:Z

    .line 1025
    .line 1026
    if-eqz v6, :cond_34

    .line 1027
    .line 1028
    invoke-virtual {v10}, Lkx;->e()Z

    .line 1029
    .line 1030
    .line 1031
    move-result v6

    .line 1032
    if-eqz v6, :cond_34

    .line 1033
    .line 1034
    iput v1, v10, Lkx;->g:I

    .line 1035
    .line 1036
    goto :goto_18

    .line 1037
    :cond_34
    invoke-virtual {v10}, Lkx;->e()Z

    .line 1038
    .line 1039
    .line 1040
    move-result v6

    .line 1041
    if-eqz v6, :cond_37

    .line 1042
    .line 1043
    iget v6, v10, Lkx;->j:I

    .line 1044
    .line 1045
    and-int/lit8 v6, v6, 0x2

    .line 1046
    .line 1047
    if-eqz v6, :cond_35

    .line 1048
    .line 1049
    goto :goto_19

    .line 1050
    :cond_35
    invoke-virtual {v10}, Lkx;->f()Z

    .line 1051
    .line 1052
    .line 1053
    move-result v6

    .line 1054
    if-eqz v6, :cond_36

    .line 1055
    .line 1056
    goto :goto_19

    .line 1057
    :cond_36
    :goto_18
    move v0, v8

    .line 1058
    move/from16 v7, v16

    .line 1059
    .line 1060
    goto/16 :goto_1d

    .line 1061
    .line 1062
    :cond_37
    :goto_19
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->d:Lh2;

    .line 1063
    .line 1064
    invoke-virtual {v6, v1, v8}, Lh2;->e(II)I

    .line 1065
    .line 1066
    .line 1067
    move-result v6

    .line 1068
    iput-object v2, v10, Lkx;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1069
    .line 1070
    iget v7, v10, Lkx;->f:I

    .line 1071
    .line 1072
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1073
    .line 1074
    .line 1075
    move-result-wide v11

    .line 1076
    cmp-long v9, p2, v19

    .line 1077
    .line 1078
    if-eqz v9, :cond_38

    .line 1079
    .line 1080
    iget-object v9, v0, Lcx;->g:Lbx;

    .line 1081
    .line 1082
    invoke-virtual {v9, v7}, Lbx;->a(I)Lax;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v7

    .line 1086
    iget-wide v13, v7, Lax;->d:J

    .line 1087
    .line 1088
    cmp-long v7, v13, v17

    .line 1089
    .line 1090
    if-eqz v7, :cond_38

    .line 1091
    .line 1092
    add-long/2addr v13, v11

    .line 1093
    cmp-long v7, v13, p2

    .line 1094
    .line 1095
    if-gez v7, :cond_36

    .line 1096
    .line 1097
    :cond_38
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Low;

    .line 1098
    .line 1099
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1100
    .line 1101
    .line 1102
    iput v6, v10, Lkx;->c:I

    .line 1103
    .line 1104
    iget-boolean v9, v7, Low;->b:Z

    .line 1105
    .line 1106
    if-eqz v9, :cond_39

    .line 1107
    .line 1108
    invoke-virtual {v7, v6}, Low;->b(I)J

    .line 1109
    .line 1110
    .line 1111
    move-result-wide v13

    .line 1112
    iput-wide v13, v10, Lkx;->e:J

    .line 1113
    .line 1114
    :cond_39
    iget v9, v10, Lkx;->j:I

    .line 1115
    .line 1116
    and-int/lit16 v9, v9, -0x208

    .line 1117
    .line 1118
    or-int/lit8 v9, v9, 0x1

    .line 1119
    .line 1120
    iput v9, v10, Lkx;->j:I

    .line 1121
    .line 1122
    sget v9, Lo30;->a:I

    .line 1123
    .line 1124
    const-string v9, "RV OnBindView"

    .line 1125
    .line 1126
    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v10}, Lkx;->c()Ljava/util/List;

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v7, v10, v6}, Low;->c(Lkx;I)V

    .line 1133
    .line 1134
    .line 1135
    iget-object v6, v10, Lkx;->k:Ljava/util/ArrayList;

    .line 1136
    .line 1137
    if-eqz v6, :cond_3a

    .line 1138
    .line 1139
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1140
    .line 1141
    .line 1142
    :cond_3a
    iget v6, v10, Lkx;->j:I

    .line 1143
    .line 1144
    and-int/lit16 v6, v6, -0x401

    .line 1145
    .line 1146
    iput v6, v10, Lkx;->j:I

    .line 1147
    .line 1148
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v6

    .line 1152
    instance-of v7, v6, Lxw;

    .line 1153
    .line 1154
    if-eqz v7, :cond_3b

    .line 1155
    .line 1156
    check-cast v6, Lxw;

    .line 1157
    .line 1158
    move/from16 v7, v16

    .line 1159
    .line 1160
    iput-boolean v7, v6, Lxw;->c:Z

    .line 1161
    .line 1162
    :cond_3b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1163
    .line 1164
    .line 1165
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1166
    .line 1167
    .line 1168
    move-result-wide v6

    .line 1169
    iget-object v0, v0, Lcx;->g:Lbx;

    .line 1170
    .line 1171
    iget v9, v10, Lkx;->f:I

    .line 1172
    .line 1173
    sub-long/2addr v6, v11

    .line 1174
    invoke-virtual {v0, v9}, Lbx;->a(I)Lax;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v0

    .line 1178
    iget-wide v11, v0, Lax;->d:J

    .line 1179
    .line 1180
    cmp-long v9, v11, v17

    .line 1181
    .line 1182
    if-nez v9, :cond_3c

    .line 1183
    .line 1184
    goto :goto_1a

    .line 1185
    :cond_3c
    div-long v11, v11, v24

    .line 1186
    .line 1187
    mul-long v11, v11, v21

    .line 1188
    .line 1189
    div-long v6, v6, v24

    .line 1190
    .line 1191
    add-long/2addr v6, v11

    .line 1192
    :goto_1a
    iput-wide v6, v0, Lax;->d:J

    .line 1193
    .line 1194
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->x:Landroid/view/accessibility/AccessibilityManager;

    .line 1195
    .line 1196
    if-eqz v0, :cond_42

    .line 1197
    .line 1198
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 1199
    .line 1200
    .line 1201
    move-result v0

    .line 1202
    if-eqz v0, :cond_42

    .line 1203
    .line 1204
    sget-object v0, Lw50;->a:Ljava/util/WeakHashMap;

    .line 1205
    .line 1206
    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    .line 1207
    .line 1208
    .line 1209
    move-result v0

    .line 1210
    const/4 v7, 0x1

    .line 1211
    if-nez v0, :cond_3d

    .line 1212
    .line 1213
    invoke-virtual {v5, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1214
    .line 1215
    .line 1216
    :cond_3d
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->j0:Lmx;

    .line 1217
    .line 1218
    if-nez v0, :cond_3e

    .line 1219
    .line 1220
    goto :goto_1c

    .line 1221
    :cond_3e
    iget-object v0, v0, Lmx;->e:Llx;

    .line 1222
    .line 1223
    if-eqz v0, :cond_41

    .line 1224
    .line 1225
    invoke-static {v5}, Lw50;->c(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v6

    .line 1229
    if-nez v6, :cond_3f

    .line 1230
    .line 1231
    move-object v6, v15

    .line 1232
    goto :goto_1b

    .line 1233
    :cond_3f
    instance-of v9, v6, Lz;

    .line 1234
    .line 1235
    if-eqz v9, :cond_40

    .line 1236
    .line 1237
    check-cast v6, Lz;

    .line 1238
    .line 1239
    iget-object v6, v6, Lz;->a:La0;

    .line 1240
    .line 1241
    goto :goto_1b

    .line 1242
    :cond_40
    new-instance v9, La0;

    .line 1243
    .line 1244
    invoke-direct {v9, v6}, La0;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 1245
    .line 1246
    .line 1247
    move-object v6, v9

    .line 1248
    :goto_1b
    if-eqz v6, :cond_41

    .line 1249
    .line 1250
    if-eq v6, v0, :cond_41

    .line 1251
    .line 1252
    iget-object v9, v0, Llx;->e:Ljava/util/WeakHashMap;

    .line 1253
    .line 1254
    invoke-virtual {v9, v5, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    .line 1256
    .line 1257
    :cond_41
    invoke-static {v5, v0}, Lw50;->l(Landroid/view/View;La0;)V

    .line 1258
    .line 1259
    .line 1260
    goto :goto_1c

    .line 1261
    :cond_42
    const/4 v7, 0x1

    .line 1262
    :goto_1c
    iget-boolean v0, v3, Lhx;->g:Z

    .line 1263
    .line 1264
    if-eqz v0, :cond_43

    .line 1265
    .line 1266
    iput v1, v10, Lkx;->g:I

    .line 1267
    .line 1268
    :cond_43
    move v0, v7

    .line 1269
    :goto_1d
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v1

    .line 1273
    if-nez v1, :cond_44

    .line 1274
    .line 1275
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v1

    .line 1279
    check-cast v1, Lxw;

    .line 1280
    .line 1281
    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1282
    .line 1283
    .line 1284
    goto :goto_1e

    .line 1285
    :cond_44
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 1286
    .line 1287
    .line 1288
    move-result v3

    .line 1289
    if-nez v3, :cond_45

    .line 1290
    .line 1291
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v1

    .line 1295
    check-cast v1, Lxw;

    .line 1296
    .line 1297
    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1298
    .line 1299
    .line 1300
    goto :goto_1e

    .line 1301
    :cond_45
    check-cast v1, Lxw;

    .line 1302
    .line 1303
    :goto_1e
    iput-object v10, v1, Lxw;->a:Lkx;

    .line 1304
    .line 1305
    if-eqz v4, :cond_46

    .line 1306
    .line 1307
    if-eqz v0, :cond_46

    .line 1308
    .line 1309
    goto :goto_1f

    .line 1310
    :cond_46
    move v7, v8

    .line 1311
    :goto_1f
    iput-boolean v7, v1, Lxw;->d:Z

    .line 1312
    .line 1313
    return-object v10

    .line 1314
    :cond_47
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 1315
    .line 1316
    invoke-virtual {v3}, Lhx;->b()I

    .line 1317
    .line 1318
    .line 1319
    move-result v3

    .line 1320
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->y()Ljava/lang/String;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v2

    .line 1324
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1325
    .line 1326
    const-string v5, "Invalid item position "

    .line 1327
    .line 1328
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1329
    .line 1330
    .line 1331
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1332
    .line 1333
    .line 1334
    const-string v5, "("

    .line 1335
    .line 1336
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1340
    .line 1341
    .line 1342
    const-string v1, "). Item count:"

    .line 1343
    .line 1344
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v1

    .line 1357
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1358
    .line 1359
    .line 1360
    throw v0
.end method

.method public final j(Lkx;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lkx;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcx;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcx;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    const/4 p0, 0x0

    .line 17
    iput-object p0, p1, Lkx;->n:Lcx;

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    iput-boolean p0, p1, Lkx;->o:Z

    .line 21
    .line 22
    iget p0, p1, Lkx;->j:I

    .line 23
    .line 24
    and-int/lit8 p0, p0, -0x21

    .line 25
    .line 26
    iput p0, p1, Lkx;->j:I

    .line 27
    .line 28
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcx;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Lww;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, v0, Lww;->j:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v1, p0, Lcx;->e:I

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    iput v1, p0, Lcx;->f:I

    .line 15
    .line 16
    iget-object v0, p0, Lcx;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    :goto_1
    if-ltz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget v3, p0, Lcx;->f:I

    .line 31
    .line 32
    if-le v2, v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lcx;->e(I)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    return-void
.end method
