.class public final Lxj;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public final a:Ls4;

.field public final b:Lle;

.field public final c:Laj;

.field public d:Z

.field public e:I

.method public constructor <init>(Ls4;Lle;Laj;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lxj;->d:Z

    const/4 v0, -0x1

    .line 108
    iput v0, p0, Lxj;->e:I

    .line 109
    iput-object p1, p0, Lxj;->a:Ls4;

    .line 110
    iput-object p2, p0, Lxj;->b:Lle;

    .line 111
    iput-object p3, p0, Lxj;->c:Laj;

    return-void
.end method

.method public constructor <init>(Ls4;Lle;Laj;Lwj;)V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lxj;->d:Z

    const/4 v1, -0x1

    .line 114
    iput v1, p0, Lxj;->e:I

    .line 115
    iput-object p1, p0, Lxj;->a:Ls4;

    .line 116
    iput-object p2, p0, Lxj;->b:Lle;

    .line 117
    iput-object p3, p0, Lxj;->c:Laj;

    const/4 p0, 0x0

    .line 118
    iput-object p0, p3, Laj;->c:Landroid/util/SparseArray;

    .line 119
    iput-object p0, p3, Laj;->d:Landroid/os/Bundle;

    .line 120
    iput v0, p3, Laj;->q:I

    .line 121
    iput-boolean v0, p3, Laj;->n:Z

    .line 122
    iput-boolean v0, p3, Laj;->k:Z

    .line 123
    iget-object p1, p3, Laj;->g:Laj;

    if-eqz p1, :cond_0

    iget-object p1, p1, Laj;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    iput-object p1, p3, Laj;->h:Ljava/lang/String;

    .line 124
    iput-object p0, p3, Laj;->g:Laj;

    .line 125
    iget-object p0, p4, Lwj;->m:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    .line 126
    iput-object p0, p3, Laj;->b:Landroid/os/Bundle;

    return-void

    .line 127
    :cond_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iput-object p0, p3, Laj;->b:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ls4;Lle;Ljava/lang/ClassLoader;Lkj;Lwj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lxj;->d:Z

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lxj;->e:I

    .line 9
    .line 10
    iput-object p1, p0, Lxj;->a:Ls4;

    .line 11
    .line 12
    iput-object p2, p0, Lxj;->b:Lle;

    .line 13
    .line 14
    iget-object p1, p5, Lwj;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p4, p1}, Lkj;->a(Ljava/lang/String;)Laj;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p2, p5, Lwj;->j:Landroid/os/Bundle;

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1, p2}, Laj;->D(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p5, Lwj;->b:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p2, p1, Laj;->e:Ljava/lang/String;

    .line 33
    .line 34
    iget-boolean p2, p5, Lwj;->c:Z

    .line 35
    .line 36
    iput-boolean p2, p1, Laj;->m:Z

    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p1, Laj;->o:Z

    .line 40
    .line 41
    iget p2, p5, Lwj;->d:I

    .line 42
    .line 43
    iput p2, p1, Laj;->v:I

    .line 44
    .line 45
    iget p2, p5, Lwj;->e:I

    .line 46
    .line 47
    iput p2, p1, Laj;->w:I

    .line 48
    .line 49
    iget-object p2, p5, Lwj;->f:Ljava/lang/String;

    .line 50
    .line 51
    iput-object p2, p1, Laj;->x:Ljava/lang/String;

    .line 52
    .line 53
    iget-boolean p2, p5, Lwj;->g:Z

    .line 54
    .line 55
    iput-boolean p2, p1, Laj;->A:Z

    .line 56
    .line 57
    iget-boolean p2, p5, Lwj;->h:Z

    .line 58
    .line 59
    iput-boolean p2, p1, Laj;->l:Z

    .line 60
    .line 61
    iget-boolean p2, p5, Lwj;->i:Z

    .line 62
    .line 63
    iput-boolean p2, p1, Laj;->z:Z

    .line 64
    .line 65
    iget-boolean p2, p5, Lwj;->k:Z

    .line 66
    .line 67
    iput-boolean p2, p1, Laj;->y:Z

    .line 68
    .line 69
    invoke-static {}, Lpn;->values()[Lpn;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iget p3, p5, Lwj;->l:I

    .line 74
    .line 75
    aget-object p2, p2, p3

    .line 76
    .line 77
    iput-object p2, p1, Laj;->L:Lpn;

    .line 78
    .line 79
    iget-object p2, p5, Lwj;->m:Landroid/os/Bundle;

    .line 80
    .line 81
    if-eqz p2, :cond_1

    .line 82
    .line 83
    iput-object p2, p1, Laj;->b:Landroid/os/Bundle;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    .line 87
    .line 88
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object p2, p1, Laj;->b:Landroid/os/Bundle;

    .line 92
    .line 93
    :goto_0
    iput-object p1, p0, Lxj;->c:Laj;

    .line 94
    .line 95
    const/4 p0, 0x2

    .line 96
    invoke-static {p0}, Lpj;->E(I)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_2

    .line 101
    .line 102
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    :cond_2
    return-void
.end method

.method public final a()V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lpj;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    iget-object v2, p0, Lxj;->c:Laj;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, v2, Laj;->b:Landroid/os/Bundle;

    .line 14
    .line 15
    iget-object v1, v2, Laj;->t:Lqj;

    .line 16
    .line 17
    invoke-virtual {v1}, Lpj;->K()V

    .line 18
    .line 19
    .line 20
    iput v0, v2, Laj;->a:I

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-boolean v1, v2, Laj;->C:Z

    .line 24
    .line 25
    invoke-virtual {v2}, Laj;->o()V

    .line 26
    .line 27
    .line 28
    iget-boolean v3, v2, Laj;->C:Z

    .line 29
    .line 30
    if-eqz v3, :cond_6

    .line 31
    .line 32
    invoke-static {v0}, Lpj;->E(I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2}, Laj;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, v2, Laj;->E:Landroid/view/View;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    iget-object v4, v2, Laj;->b:Landroid/os/Bundle;

    .line 47
    .line 48
    iget-object v5, v2, Laj;->c:Landroid/util/SparseArray;

    .line 49
    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0, v5}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 53
    .line 54
    .line 55
    iput-object v3, v2, Laj;->c:Landroid/util/SparseArray;

    .line 56
    .line 57
    :cond_2
    iget-object v0, v2, Laj;->E:Landroid/view/View;

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iget-object v0, v2, Laj;->N:Lbk;

    .line 62
    .line 63
    iget-object v5, v2, Laj;->d:Landroid/os/Bundle;

    .line 64
    .line 65
    iget-object v0, v0, Lbk;->d:Lcz;

    .line 66
    .line 67
    invoke-virtual {v0, v5}, Lcz;->b(Landroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    iput-object v3, v2, Laj;->d:Landroid/os/Bundle;

    .line 71
    .line 72
    :cond_3
    iput-boolean v1, v2, Laj;->C:Z

    .line 73
    .line 74
    invoke-virtual {v2, v4}, Laj;->y(Landroid/os/Bundle;)V

    .line 75
    .line 76
    .line 77
    iget-boolean v0, v2, Laj;->C:Z

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    iget-object v0, v2, Laj;->E:Landroid/view/View;

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    iget-object v0, v2, Laj;->N:Lbk;

    .line 86
    .line 87
    sget-object v4, Lon;->ON_CREATE:Lon;

    .line 88
    .line 89
    invoke-virtual {v0, v4}, Lbk;->c(Lon;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    const-string p0, " did not call through to super.onViewStateRestored()"

    .line 94
    .line 95
    invoke-static {v2, p0}, Lg9;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_5
    :goto_0
    iput-object v3, v2, Laj;->b:Landroid/os/Bundle;

    .line 100
    .line 101
    iget-object v0, v2, Laj;->t:Lqj;

    .line 102
    .line 103
    iput-boolean v1, v0, Lpj;->E:Z

    .line 104
    .line 105
    iput-boolean v1, v0, Lpj;->F:Z

    .line 106
    .line 107
    iget-object v2, v0, Lpj;->L:Ltj;

    .line 108
    .line 109
    iput-boolean v1, v2, Ltj;->g:Z

    .line 110
    .line 111
    const/4 v2, 0x4

    .line 112
    invoke-virtual {v0, v2}, Lpj;->t(I)V

    .line 113
    .line 114
    .line 115
    iget-object p0, p0, Lxj;->a:Ls4;

    .line 116
    .line 117
    invoke-virtual {p0, v1}, Ls4;->c(Z)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_6
    const-string p0, " did not call through to super.onActivityCreated()"

    .line 122
    .line 123
    invoke-static {v2, p0}, Lg9;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lxj;->b:Lle;

    .line 2
    .line 3
    iget-object v0, v0, Lle;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object p0, p0, Lxj;->c:Laj;

    .line 8
    .line 9
    iget-object v1, p0, Laj;->D:Landroid/view/ViewGroup;

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    add-int/lit8 v4, v3, -0x1

    .line 20
    .line 21
    :goto_0
    if-ltz v4, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Laj;

    .line 28
    .line 29
    iget-object v6, v5, Laj;->D:Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-ne v6, v1, :cond_1

    .line 32
    .line 33
    iget-object v5, v5, Laj;->E:Landroid/view/View;

    .line 34
    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    add-int/lit8 v2, v0, 0x1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-ge v3, v4, :cond_4

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Laj;

    .line 60
    .line 61
    iget-object v5, v4, Laj;->D:Landroid/view/ViewGroup;

    .line 62
    .line 63
    if-ne v5, v1, :cond_3

    .line 64
    .line 65
    iget-object v4, v4, Laj;->E:Landroid/view/View;

    .line 66
    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    goto :goto_1

    .line 75
    :cond_4
    :goto_2
    iget-object v0, p0, Laj;->D:Landroid/view/ViewGroup;

    .line 76
    .line 77
    iget-object p0, p0, Laj;->E:Landroid/view/View;

    .line 78
    .line 79
    invoke-virtual {v0, p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final c()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lpj;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lxj;->c:Laj;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, v1, Laj;->g:Laj;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const-string v3, " that does not belong to this FragmentManager!"

    .line 17
    .line 18
    const-string v4, " declared target fragment "

    .line 19
    .line 20
    iget-object v5, p0, Lxj;->b:Lle;

    .line 21
    .line 22
    const-string v6, "Fragment "

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, v0, Laj;->e:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v5, v5, Lle;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v5, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lxj;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v3, v1, Laj;->g:Laj;

    .line 41
    .line 42
    iget-object v3, v3, Laj;->e:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v3, v1, Laj;->h:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v2, v1, Laj;->g:Laj;

    .line 47
    .line 48
    move-object v2, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v1, v1, Laj;->g:Laj;

    .line 61
    .line 62
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :cond_2
    iget-object v0, v1, Laj;->h:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    iget-object v2, v5, Lle;->b:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v2, Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    move-object v2, v0

    .line 92
    check-cast v2, Lxj;

    .line 93
    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v1, v1, Laj;->h:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0

    .line 126
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 127
    .line 128
    invoke-virtual {v2}, Lxj;->k()V

    .line 129
    .line 130
    .line 131
    :cond_5
    iget-object v0, v1, Laj;->r:Lpj;

    .line 132
    .line 133
    iget-object v2, v0, Lpj;->t:Lcj;

    .line 134
    .line 135
    iput-object v2, v1, Laj;->s:Lcj;

    .line 136
    .line 137
    iget-object v0, v0, Lpj;->v:Laj;

    .line 138
    .line 139
    iput-object v0, v1, Laj;->u:Laj;

    .line 140
    .line 141
    iget-object p0, p0, Lxj;->a:Ls4;

    .line 142
    .line 143
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, v0}, Ls4;->j(Z)V

    .line 145
    .line 146
    .line 147
    iget-object v2, v1, Laj;->Q:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    move v4, v0

    .line 154
    :goto_1
    if-ge v4, v3, :cond_6

    .line 155
    .line 156
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    add-int/lit8 v4, v4, 0x1

    .line 161
    .line 162
    check-cast v5, Lxi;

    .line 163
    .line 164
    iget-object v5, v5, Lxi;->a:Laj;

    .line 165
    .line 166
    iget-object v6, v5, Laj;->P:Lcz;

    .line 167
    .line 168
    invoke-virtual {v6}, Lcz;->a()V

    .line 169
    .line 170
    .line 171
    invoke-static {v5}, Lvd;->m(Ldz;)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 176
    .line 177
    .line 178
    iget-object v2, v1, Laj;->t:Lqj;

    .line 179
    .line 180
    iget-object v3, v1, Laj;->s:Lcj;

    .line 181
    .line 182
    invoke-virtual {v1}, Laj;->c()Lvd;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v2, v3, v4, v1}, Lpj;->b(Lcj;Lvd;Laj;)V

    .line 187
    .line 188
    .line 189
    iput v0, v1, Laj;->a:I

    .line 190
    .line 191
    iput-boolean v0, v1, Laj;->C:Z

    .line 192
    .line 193
    iget-object v2, v1, Laj;->s:Lcj;

    .line 194
    .line 195
    iget-object v2, v2, Lcj;->F:Lf3;

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Laj;->p(Landroid/content/Context;)V

    .line 198
    .line 199
    .line 200
    iget-boolean v2, v1, Laj;->C:Z

    .line 201
    .line 202
    if-eqz v2, :cond_8

    .line 203
    .line 204
    iget-object v2, v1, Laj;->r:Lpj;

    .line 205
    .line 206
    iget-object v2, v2, Lpj;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_7

    .line 217
    .line 218
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    check-cast v3, Luj;

    .line 223
    .line 224
    invoke-interface {v3}, Luj;->a()V

    .line 225
    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_7
    iget-object v1, v1, Laj;->t:Lqj;

    .line 229
    .line 230
    iput-boolean v0, v1, Lpj;->E:Z

    .line 231
    .line 232
    iput-boolean v0, v1, Lpj;->F:Z

    .line 233
    .line 234
    iget-object v2, v1, Lpj;->L:Ltj;

    .line 235
    .line 236
    iput-boolean v0, v2, Ltj;->g:Z

    .line 237
    .line 238
    invoke-virtual {v1, v0}, Lpj;->t(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v0}, Ls4;->e(Z)V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :cond_8
    const-string p0, " did not call through to super.onAttach()"

    .line 246
    .line 247
    invoke-static {v1, p0}, Lg9;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    return-void
.end method

.method public final d()I
    .locals 13

    .line 1
    iget-object v0, p0, Lxj;->c:Laj;

    .line 2
    .line 3
    iget-object v1, v0, Laj;->r:Lpj;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget p0, v0, Laj;->a:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    iget v1, p0, Lxj;->e:I

    .line 11
    .line 12
    iget-object v2, v0, Laj;->L:Lpn;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x5

    .line 20
    const/4 v5, -0x1

    .line 21
    const/4 v6, 0x3

    .line 22
    const/4 v7, 0x4

    .line 23
    const/4 v8, 0x2

    .line 24
    const/4 v9, 0x1

    .line 25
    if-eq v2, v9, :cond_3

    .line 26
    .line 27
    if-eq v2, v8, :cond_2

    .line 28
    .line 29
    if-eq v2, v6, :cond_1

    .line 30
    .line 31
    if-eq v2, v7, :cond_4

    .line 32
    .line 33
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_4
    :goto_0
    iget-boolean v2, v0, Laj;->m:Z

    .line 53
    .line 54
    if-eqz v2, :cond_7

    .line 55
    .line 56
    iget-boolean v2, v0, Laj;->n:Z

    .line 57
    .line 58
    iget p0, p0, Lxj;->e:I

    .line 59
    .line 60
    if-eqz v2, :cond_5

    .line 61
    .line 62
    invoke-static {p0, v8}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget-object p0, v0, Laj;->E:Landroid/view/View;

    .line 67
    .line 68
    if-eqz p0, :cond_7

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    if-nez p0, :cond_7

    .line 75
    .line 76
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    goto :goto_1

    .line 81
    :cond_5
    if-ge p0, v7, :cond_6

    .line 82
    .line 83
    iget p0, v0, Laj;->a:I

    .line 84
    .line 85
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    goto :goto_1

    .line 90
    :cond_6
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    :cond_7
    :goto_1
    iget-boolean p0, v0, Laj;->k:Z

    .line 95
    .line 96
    if-nez p0, :cond_8

    .line 97
    .line 98
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    :cond_8
    iget-object p0, v0, Laj;->D:Landroid/view/ViewGroup;

    .line 103
    .line 104
    if-eqz p0, :cond_f

    .line 105
    .line 106
    invoke-virtual {v0}, Laj;->j()Lpj;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lpj;->D()Lqg;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {p0, v2}, Loe;->f(Landroid/view/ViewGroup;Lqg;)Loe;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0, v0}, Loe;->d(Laj;)Lq00;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    if-eqz v2, :cond_9

    .line 123
    .line 124
    iget v2, v2, Lq00;->b:I

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_9
    move v2, v3

    .line 128
    :goto_2
    iget-object p0, p0, Loe;->c:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    :cond_a
    :goto_3
    if-ge v3, v10, :cond_c

    .line 135
    .line 136
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    add-int/lit8 v3, v3, 0x1

    .line 141
    .line 142
    check-cast v11, Lq00;

    .line 143
    .line 144
    iget-object v12, v11, Lq00;->c:Laj;

    .line 145
    .line 146
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    if-eq v12, v0, :cond_b

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_b
    iget-boolean v12, v11, Lq00;->f:Z

    .line 153
    .line 154
    if-nez v12, :cond_a

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_c
    const/4 v11, 0x0

    .line 158
    :goto_4
    if-eqz v11, :cond_e

    .line 159
    .line 160
    if-eqz v2, :cond_d

    .line 161
    .line 162
    if-ne v2, v9, :cond_e

    .line 163
    .line 164
    :cond_d
    iget p0, v11, Lq00;->b:I

    .line 165
    .line 166
    move v3, p0

    .line 167
    goto :goto_5

    .line 168
    :cond_e
    move v3, v2

    .line 169
    :cond_f
    :goto_5
    if-ne v3, v8, :cond_10

    .line 170
    .line 171
    const/4 p0, 0x6

    .line 172
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    goto :goto_6

    .line 177
    :cond_10
    if-ne v3, v6, :cond_11

    .line 178
    .line 179
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    goto :goto_6

    .line 184
    :cond_11
    iget-boolean p0, v0, Laj;->l:Z

    .line 185
    .line 186
    if-eqz p0, :cond_13

    .line 187
    .line 188
    invoke-virtual {v0}, Laj;->n()Z

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    if-eqz p0, :cond_12

    .line 193
    .line 194
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    goto :goto_6

    .line 199
    :cond_12
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    :cond_13
    :goto_6
    iget-boolean p0, v0, Laj;->F:Z

    .line 204
    .line 205
    if-eqz p0, :cond_14

    .line 206
    .line 207
    iget p0, v0, Laj;->a:I

    .line 208
    .line 209
    if-ge p0, v4, :cond_14

    .line 210
    .line 211
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    :cond_14
    invoke-static {v8}, Lpj;->E(I)Z

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    if-eqz p0, :cond_15

    .line 220
    .line 221
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    :cond_15
    return v1
.end method

.method public final e()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lpj;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lxj;->c:Laj;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v0, v1, Laj;->J:Z

    .line 14
    .line 15
    iget-object v2, v1, Laj;->b:Landroid/os/Bundle;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    iget-object p0, p0, Lxj;->a:Ls4;

    .line 22
    .line 23
    invoke-virtual {p0, v4}, Ls4;->k(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Laj;->b:Landroid/os/Bundle;

    .line 27
    .line 28
    iget-object v2, v1, Laj;->t:Lqj;

    .line 29
    .line 30
    invoke-virtual {v2}, Lpj;->K()V

    .line 31
    .line 32
    .line 33
    iput v3, v1, Laj;->a:I

    .line 34
    .line 35
    iput-boolean v4, v1, Laj;->C:Z

    .line 36
    .line 37
    iget-object v2, v1, Laj;->M:Ltn;

    .line 38
    .line 39
    new-instance v5, Llw;

    .line 40
    .line 41
    const/4 v6, 0x2

    .line 42
    invoke-direct {v5, v6, v1}, Llw;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v5}, Ltn;->a(Lqn;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, v1, Laj;->P:Lcz;

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Lcz;->b(Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Laj;->q(Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    iput-boolean v3, v1, Laj;->J:Z

    .line 57
    .line 58
    iget-boolean v0, v1, Laj;->C:Z

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-object v0, v1, Laj;->M:Ltn;

    .line 63
    .line 64
    sget-object v1, Lon;->ON_CREATE:Lon;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ltn;->d(Lon;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v4}, Ls4;->f(Z)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    const-string p0, " did not call through to super.onCreate()"

    .line 74
    .line 75
    invoke-static {v1, p0}, Lg9;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    if-eqz v2, :cond_3

    .line 80
    .line 81
    const-string p0, "android:support:fragments"

    .line 82
    .line 83
    invoke-virtual {v2, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-eqz p0, :cond_3

    .line 88
    .line 89
    iget-object v0, v1, Laj;->t:Lqj;

    .line 90
    .line 91
    invoke-virtual {v0, p0}, Lpj;->Q(Landroid/os/Parcelable;)V

    .line 92
    .line 93
    .line 94
    iget-object p0, v1, Laj;->t:Lqj;

    .line 95
    .line 96
    iput-boolean v4, p0, Lpj;->E:Z

    .line 97
    .line 98
    iput-boolean v4, p0, Lpj;->F:Z

    .line 99
    .line 100
    iget-object v0, p0, Lpj;->L:Ltj;

    .line 101
    .line 102
    iput-boolean v4, v0, Ltj;->g:Z

    .line 103
    .line 104
    invoke-virtual {p0, v3}, Lpj;->t(I)V

    .line 105
    .line 106
    .line 107
    :cond_3
    iput v3, v1, Laj;->a:I

    .line 108
    .line 109
    return-void
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lxj;->c:Laj;

    .line 2
    .line 3
    iget-boolean v1, v0, Laj;->m:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x3

    .line 9
    invoke-static {v1}, Lpj;->E(I)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v2, v0, Laj;->b:Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Laj;->u(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, v0, Laj;->D:Landroid/view/ViewGroup;

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_2
    iget v3, v0, Laj;->w:I

    .line 31
    .line 32
    if-eqz v3, :cond_7

    .line 33
    .line 34
    const/4 v4, -0x1

    .line 35
    if-eq v3, v4, :cond_6

    .line 36
    .line 37
    iget-object v4, v0, Laj;->r:Lpj;

    .line 38
    .line 39
    iget-object v4, v4, Lpj;->u:Lvd;

    .line 40
    .line 41
    invoke-virtual {v4, v3}, Lvd;->J(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroid/view/ViewGroup;

    .line 46
    .line 47
    if-nez v3, :cond_4

    .line 48
    .line 49
    iget-boolean v1, v0, Laj;->o:Z

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Laj;->A()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    iget v1, v0, Laj;->w:I

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    const-string p0, "unknown"

    .line 71
    .line 72
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    iget v2, v0, Laj;->w:I

    .line 75
    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v4, "No view found for id 0x"

    .line 83
    .line 84
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, " ("

    .line 91
    .line 92
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p0, ") for fragment "

    .line 99
    .line 100
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v1

    .line 114
    :cond_4
    instance-of v4, v3, Landroidx/fragment/app/FragmentContainerView;

    .line 115
    .line 116
    if-nez v4, :cond_8

    .line 117
    .line 118
    sget-object v4, Lzj;->a:Lyj;

    .line 119
    .line 120
    new-instance v4, Lvj;

    .line 121
    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v6, "Attempting to add fragment "

    .line 125
    .line 126
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v6, " to container "

    .line 133
    .line 134
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v6, " which is not a FragmentContainerView"

    .line 141
    .line 142
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-direct {v4, v0, v5}, Lvj;-><init>(Laj;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v1}, Lpj;->E(I)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_5

    .line 157
    .line 158
    iget-object v1, v4, Lvj;->a:Laj;

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    :cond_5
    invoke-static {v0}, Lzj;->a(Laj;)Lyj;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 172
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v2, "Cannot create fragment "

    .line 176
    .line 177
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v0, " for a container view with no id"

    .line 184
    .line 185
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p0

    .line 196
    :cond_7
    const/4 v3, 0x0

    .line 197
    :cond_8
    :goto_1
    iput-object v3, v0, Laj;->D:Landroid/view/ViewGroup;

    .line 198
    .line 199
    iget-object v1, v0, Laj;->b:Landroid/os/Bundle;

    .line 200
    .line 201
    invoke-virtual {v0, v2, v3, v1}, Laj;->z(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 202
    .line 203
    .line 204
    iget-object v1, v0, Laj;->E:Landroid/view/View;

    .line 205
    .line 206
    const/4 v2, 0x2

    .line 207
    if-eqz v1, :cond_d

    .line 208
    .line 209
    const/4 v4, 0x0

    .line 210
    invoke-virtual {v1, v4}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, Laj;->E:Landroid/view/View;

    .line 214
    .line 215
    sget v5, Liv;->fragment_container_view_tag:I

    .line 216
    .line 217
    invoke-virtual {v1, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    if-eqz v3, :cond_9

    .line 221
    .line 222
    invoke-virtual {p0}, Lxj;->b()V

    .line 223
    .line 224
    .line 225
    :cond_9
    iget-boolean v1, v0, Laj;->y:Z

    .line 226
    .line 227
    if-eqz v1, :cond_a

    .line 228
    .line 229
    iget-object v1, v0, Laj;->E:Landroid/view/View;

    .line 230
    .line 231
    const/16 v3, 0x8

    .line 232
    .line 233
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 234
    .line 235
    .line 236
    :cond_a
    iget-object v1, v0, Laj;->E:Landroid/view/View;

    .line 237
    .line 238
    sget-object v3, Lw50;->a:Ljava/util/WeakHashMap;

    .line 239
    .line 240
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    iget-object v3, v0, Laj;->E:Landroid/view/View;

    .line 245
    .line 246
    if-eqz v1, :cond_b

    .line 247
    .line 248
    invoke-static {v3}, Lj50;->c(Landroid/view/View;)V

    .line 249
    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_b
    new-instance v1, Lo8;

    .line 253
    .line 254
    invoke-direct {v1, v2, v3}, Lo8;-><init>(ILjava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 258
    .line 259
    .line 260
    :goto_2
    iget-object v1, v0, Laj;->t:Lqj;

    .line 261
    .line 262
    invoke-virtual {v1, v2}, Lpj;->t(I)V

    .line 263
    .line 264
    .line 265
    iget-object p0, p0, Lxj;->a:Ls4;

    .line 266
    .line 267
    invoke-virtual {p0, v4}, Ls4;->p(Z)V

    .line 268
    .line 269
    .line 270
    iget-object p0, v0, Laj;->E:Landroid/view/View;

    .line 271
    .line 272
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 273
    .line 274
    .line 275
    move-result p0

    .line 276
    iget-object v1, v0, Laj;->E:Landroid/view/View;

    .line 277
    .line 278
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    invoke-virtual {v0}, Laj;->f()Lzi;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    iput v1, v3, Lzi;->j:F

    .line 287
    .line 288
    iget-object v1, v0, Laj;->D:Landroid/view/ViewGroup;

    .line 289
    .line 290
    if-eqz v1, :cond_d

    .line 291
    .line 292
    if-nez p0, :cond_d

    .line 293
    .line 294
    iget-object p0, v0, Laj;->E:Landroid/view/View;

    .line 295
    .line 296
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    if-eqz p0, :cond_c

    .line 301
    .line 302
    invoke-virtual {v0}, Laj;->f()Lzi;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    iput-object p0, v1, Lzi;->k:Landroid/view/View;

    .line 307
    .line 308
    invoke-static {v2}, Lpj;->E(I)Z

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    if-eqz v1, :cond_c

    .line 313
    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    :cond_c
    iget-object p0, v0, Laj;->E:Landroid/view/View;

    .line 321
    .line 322
    const/4 v1, 0x0

    .line 323
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 324
    .line 325
    .line 326
    :cond_d
    iput v2, v0, Laj;->a:I

    .line 327
    .line 328
    return-void
.end method

.method public final g()V
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lpj;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    iget-object v2, p0, Lxj;->c:Laj;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-boolean v1, v2, Laj;->l:Z

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v2}, Laj;->n()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    move v1, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v1, v3

    .line 28
    :goto_0
    iget-object v5, p0, Lxj;->b:Lle;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-object v6, v2, Laj;->e:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v7, v5, Lle;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v7, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Lwj;

    .line 43
    .line 44
    :cond_2
    if-nez v1, :cond_7

    .line 45
    .line 46
    iget-object v6, v5, Lle;->d:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v6, Ltj;

    .line 49
    .line 50
    iget-object v7, v6, Ltj;->b:Ljava/util/HashMap;

    .line 51
    .line 52
    iget-object v8, v2, Laj;->e:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-nez v7, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-boolean v7, v6, Ltj;->e:Z

    .line 62
    .line 63
    if-eqz v7, :cond_4

    .line 64
    .line 65
    iget-boolean v6, v6, Ltj;->f:Z

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    :goto_1
    move v6, v4

    .line 69
    :goto_2
    if-eqz v6, :cond_5

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_5
    iget-object p0, v2, Laj;->h:Ljava/lang/String;

    .line 73
    .line 74
    if-eqz p0, :cond_6

    .line 75
    .line 76
    invoke-virtual {v5, p0}, Lle;->c(Ljava/lang/String;)Laj;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    if-eqz p0, :cond_6

    .line 81
    .line 82
    iget-boolean v0, p0, Laj;->A:Z

    .line 83
    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    iput-object p0, v2, Laj;->g:Laj;

    .line 87
    .line 88
    :cond_6
    iput v3, v2, Laj;->a:I

    .line 89
    .line 90
    return-void

    .line 91
    :cond_7
    :goto_3
    iget-object v6, v2, Laj;->s:Lcj;

    .line 92
    .line 93
    if-eqz v6, :cond_8

    .line 94
    .line 95
    iget-object v6, v5, Lle;->d:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v6, Ltj;

    .line 98
    .line 99
    iget-boolean v6, v6, Ltj;->f:Z

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_8
    iget-object v6, v6, Lcj;->F:Lf3;

    .line 103
    .line 104
    if-eqz v6, :cond_9

    .line 105
    .line 106
    invoke-virtual {v6}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    xor-int/2addr v6, v4

    .line 111
    goto :goto_4

    .line 112
    :cond_9
    move v6, v4

    .line 113
    :goto_4
    if-eqz v1, :cond_a

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_a
    if-eqz v6, :cond_c

    .line 117
    .line 118
    :goto_5
    iget-object v1, v5, Lle;->d:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v1, Ltj;

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Lpj;->E(I)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_b

    .line 130
    .line 131
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    :cond_b
    iget-object v0, v2, Laj;->e:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v1, v0}, Ltj;->c(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_c
    iget-object v0, v2, Laj;->t:Lqj;

    .line 140
    .line 141
    invoke-virtual {v0}, Lpj;->k()V

    .line 142
    .line 143
    .line 144
    iget-object v0, v2, Laj;->M:Ltn;

    .line 145
    .line 146
    sget-object v1, Lon;->ON_DESTROY:Lon;

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ltn;->d(Lon;)V

    .line 149
    .line 150
    .line 151
    iput v3, v2, Laj;->a:I

    .line 152
    .line 153
    iput-boolean v3, v2, Laj;->J:Z

    .line 154
    .line 155
    iput-boolean v4, v2, Laj;->C:Z

    .line 156
    .line 157
    iget-object v0, p0, Lxj;->a:Ls4;

    .line 158
    .line 159
    invoke-virtual {v0, v3}, Ls4;->g(Z)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5}, Lle;->f()Ljava/util/ArrayList;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    :cond_d
    :goto_6
    if-ge v3, v1, :cond_e

    .line 171
    .line 172
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    add-int/lit8 v3, v3, 0x1

    .line 177
    .line 178
    check-cast v4, Lxj;

    .line 179
    .line 180
    if-eqz v4, :cond_d

    .line 181
    .line 182
    iget-object v4, v4, Lxj;->c:Laj;

    .line 183
    .line 184
    iget-object v6, v2, Laj;->e:Ljava/lang/String;

    .line 185
    .line 186
    iget-object v7, v4, Laj;->h:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-eqz v6, :cond_d

    .line 193
    .line 194
    iput-object v2, v4, Laj;->g:Laj;

    .line 195
    .line 196
    const/4 v6, 0x0

    .line 197
    iput-object v6, v4, Laj;->h:Ljava/lang/String;

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_e
    iget-object v0, v2, Laj;->h:Ljava/lang/String;

    .line 201
    .line 202
    if-eqz v0, :cond_f

    .line 203
    .line 204
    invoke-virtual {v5, v0}, Lle;->c(Ljava/lang/String;)Laj;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iput-object v0, v2, Laj;->g:Laj;

    .line 209
    .line 210
    :cond_f
    invoke-virtual {v5, p0}, Lle;->j(Lxj;)V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method public final h()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lpj;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lxj;->c:Laj;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, v1, Laj;->D:Landroid/view/ViewGroup;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v2, v1, Laj;->E:Landroid/view/View;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, v1, Laj;->t:Lqj;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v2}, Lpj;->t(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v1, Laj;->E:Landroid/view/View;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, v1, Laj;->N:Lbk;

    .line 35
    .line 36
    invoke-virtual {v0}, Lbk;->f()V

    .line 37
    .line 38
    .line 39
    iget-object v0, v0, Lbk;->c:Ltn;

    .line 40
    .line 41
    iget-object v0, v0, Ltn;->c:Lpn;

    .line 42
    .line 43
    sget-object v3, Lpn;->c:Lpn;

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-ltz v0, :cond_2

    .line 50
    .line 51
    iget-object v0, v1, Laj;->N:Lbk;

    .line 52
    .line 53
    sget-object v3, Lon;->ON_DESTROY:Lon;

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Lbk;->c(Lon;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iput v2, v1, Laj;->a:I

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    iput-boolean v0, v1, Laj;->C:Z

    .line 62
    .line 63
    invoke-virtual {v1}, Laj;->s()V

    .line 64
    .line 65
    .line 66
    iget-boolean v2, v1, Laj;->C:Z

    .line 67
    .line 68
    if-eqz v2, :cond_4

    .line 69
    .line 70
    invoke-interface {v1}, Lj60;->d()Li60;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-instance v3, Lo0;

    .line 75
    .line 76
    sget-object v4, Lyo;->c:Lsj;

    .line 77
    .line 78
    invoke-direct {v3, v2, v4}, Lo0;-><init>(Li60;Lh60;)V

    .line 79
    .line 80
    .line 81
    const-class v2, Lyo;

    .line 82
    .line 83
    invoke-virtual {v3, v2}, Lo0;->t(Ljava/lang/Class;)Le60;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lyo;

    .line 88
    .line 89
    iget-object v2, v2, Lyo;->b:Lo00;

    .line 90
    .line 91
    iget v3, v2, Lo00;->c:I

    .line 92
    .line 93
    if-gtz v3, :cond_3

    .line 94
    .line 95
    iput-boolean v0, v1, Laj;->p:Z

    .line 96
    .line 97
    iget-object p0, p0, Lxj;->a:Ls4;

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Ls4;->q(Z)V

    .line 100
    .line 101
    .line 102
    const/4 p0, 0x0

    .line 103
    iput-object p0, v1, Laj;->D:Landroid/view/ViewGroup;

    .line 104
    .line 105
    iput-object p0, v1, Laj;->E:Landroid/view/View;

    .line 106
    .line 107
    iput-object p0, v1, Laj;->N:Lbk;

    .line 108
    .line 109
    iget-object v2, v1, Laj;->O:Lms;

    .line 110
    .line 111
    invoke-virtual {v2, p0}, Lms;->d(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iput-boolean v0, v1, Laj;->n:Z

    .line 115
    .line 116
    return-void

    .line 117
    :cond_3
    iget-object p0, v2, Lo00;->b:[Ljava/lang/Object;

    .line 118
    .line 119
    aget-object p0, p0, v0

    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-static {}, Lg9;->a()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_4
    const-string p0, " did not call through to super.onDestroyView()"

    .line 129
    .line 130
    invoke-static {v1, p0}, Lg9;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public final i()V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lpj;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    iget-object v2, p0, Lxj;->c:Laj;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v1, -0x1

    .line 14
    iput v1, v2, Laj;->a:I

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    iput-boolean v3, v2, Laj;->C:Z

    .line 18
    .line 19
    invoke-virtual {v2}, Laj;->t()V

    .line 20
    .line 21
    .line 22
    iget-boolean v4, v2, Laj;->C:Z

    .line 23
    .line 24
    if-eqz v4, :cond_7

    .line 25
    .line 26
    iget-object v4, v2, Laj;->t:Lqj;

    .line 27
    .line 28
    iget-boolean v5, v4, Lpj;->G:Z

    .line 29
    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {v4}, Lpj;->k()V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lqj;

    .line 36
    .line 37
    invoke-direct {v4}, Lpj;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v4, v2, Laj;->t:Lqj;

    .line 41
    .line 42
    :cond_1
    iget-object v4, p0, Lxj;->a:Ls4;

    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ls4;->h(Z)V

    .line 45
    .line 46
    .line 47
    iput v1, v2, Laj;->a:I

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    iput-object v1, v2, Laj;->s:Lcj;

    .line 51
    .line 52
    iput-object v1, v2, Laj;->u:Laj;

    .line 53
    .line 54
    iput-object v1, v2, Laj;->r:Lpj;

    .line 55
    .line 56
    iget-boolean v1, v2, Laj;->l:Z

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2}, Laj;->n()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    iget-object p0, p0, Lxj;->b:Lle;

    .line 68
    .line 69
    iget-object p0, p0, Lle;->d:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Ltj;

    .line 72
    .line 73
    iget-object v1, p0, Ltj;->b:Ljava/util/HashMap;

    .line 74
    .line 75
    iget-object v3, v2, Laj;->e:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_3

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    iget-boolean v1, p0, Ltj;->e:Z

    .line 85
    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    iget-boolean p0, p0, Ltj;->f:Z

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    :goto_0
    const/4 p0, 0x1

    .line 92
    :goto_1
    if-eqz p0, :cond_6

    .line 93
    .line 94
    :goto_2
    invoke-static {v0}, Lpj;->E(I)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-eqz p0, :cond_5

    .line 99
    .line 100
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    :cond_5
    invoke-virtual {v2}, Laj;->l()V

    .line 104
    .line 105
    .line 106
    :cond_6
    return-void

    .line 107
    :cond_7
    const-string p0, " did not call through to super.onDetach()"

    .line 108
    .line 109
    invoke-static {v2, p0}, Lg9;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lxj;->c:Laj;

    .line 2
    .line 3
    iget-boolean v1, v0, Laj;->m:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, v0, Laj;->n:Z

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-boolean v1, v0, Laj;->p:Z

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-static {v1}, Lpj;->E(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v1, v0, Laj;->b:Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Laj;->u(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    iget-object v3, v0, Laj;->b:Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2, v3}, Laj;->z(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Laj;->E:Landroid/view/View;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Laj;->E:Landroid/view/View;

    .line 46
    .line 47
    sget v3, Liv;->fragment_container_view_tag:I

    .line 48
    .line 49
    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-boolean v1, v0, Laj;->y:Z

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iget-object v1, v0, Laj;->E:Landroid/view/View;

    .line 57
    .line 58
    const/16 v3, 0x8

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v1, v0, Laj;->t:Lqj;

    .line 64
    .line 65
    const/4 v3, 0x2

    .line 66
    invoke-virtual {v1, v3}, Lpj;->t(I)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lxj;->a:Ls4;

    .line 70
    .line 71
    invoke-virtual {p0, v2}, Ls4;->p(Z)V

    .line 72
    .line 73
    .line 74
    iput v3, v0, Laj;->a:I

    .line 75
    .line 76
    :cond_2
    return-void
.end method

.method public final k()V
    .locals 9

    .line 1
    iget-object v0, p0, Lxj;->b:Lle;

    .line 2
    .line 3
    iget-boolean v1, p0, Lxj;->d:Z

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object v3, p0, Lxj;->c:Laj;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-static {v2}, Lpj;->E(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    const/4 v1, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    :try_start_0
    iput-boolean v1, p0, Lxj;->d:Z

    .line 23
    .line 24
    move v5, v4

    .line 25
    :goto_0
    invoke-virtual {p0}, Lxj;->d()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    iget v7, v3, Laj;->a:I

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    if-eq v6, v7, :cond_9

    .line 33
    .line 34
    if-le v6, v7, :cond_4

    .line 35
    .line 36
    add-int/lit8 v7, v7, 0x1

    .line 37
    .line 38
    packed-switch v7, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :pswitch_0
    invoke-virtual {p0}, Lxj;->n()V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :catchall_0
    move-exception v0

    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :pswitch_1
    const/4 v5, 0x6

    .line 52
    iput v5, v3, Laj;->a:I

    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :pswitch_2
    invoke-virtual {p0}, Lxj;->p()V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :pswitch_3
    iget-object v5, v3, Laj;->E:Landroid/view/View;

    .line 62
    .line 63
    if-eqz v5, :cond_3

    .line 64
    .line 65
    iget-object v5, v3, Laj;->D:Landroid/view/ViewGroup;

    .line 66
    .line 67
    if-eqz v5, :cond_3

    .line 68
    .line 69
    invoke-virtual {v3}, Laj;->j()Lpj;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v6}, Lpj;->D()Lqg;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-static {v5, v6}, Loe;->f(Landroid/view/ViewGroup;Lqg;)Loe;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    iget-object v6, v3, Laj;->E:Landroid/view/View;

    .line 82
    .line 83
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    invoke-static {v6}, Lk00;->b(I)I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    invoke-static {v2}, Lpj;->E(I)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_2

    .line 96
    .line 97
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    :cond_2
    invoke-virtual {v5, v6, v2, p0}, Loe;->a(IILxj;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    const/4 v5, 0x4

    .line 104
    iput v5, v3, Laj;->a:I

    .line 105
    .line 106
    goto/16 :goto_1

    .line 107
    .line 108
    :pswitch_4
    invoke-virtual {p0}, Lxj;->a()V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_1

    .line 112
    .line 113
    :pswitch_5
    invoke-virtual {p0}, Lxj;->j()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lxj;->f()V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_1

    .line 120
    .line 121
    :pswitch_6
    invoke-virtual {p0}, Lxj;->e()V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :pswitch_7
    invoke-virtual {p0}, Lxj;->c()V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    add-int/lit8 v7, v7, -0x1

    .line 130
    .line 131
    packed-switch v7, :pswitch_data_1

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :pswitch_8
    invoke-virtual {p0}, Lxj;->l()V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :pswitch_9
    const/4 v5, 0x5

    .line 140
    iput v5, v3, Laj;->a:I

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :pswitch_a
    invoke-virtual {p0}, Lxj;->q()V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :pswitch_b
    invoke-static {v8}, Lpj;->E(I)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-eqz v5, :cond_5

    .line 152
    .line 153
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    :cond_5
    iget-object v5, v3, Laj;->E:Landroid/view/View;

    .line 157
    .line 158
    if-eqz v5, :cond_6

    .line 159
    .line 160
    iget-object v5, v3, Laj;->c:Landroid/util/SparseArray;

    .line 161
    .line 162
    if-nez v5, :cond_6

    .line 163
    .line 164
    invoke-virtual {p0}, Lxj;->o()V

    .line 165
    .line 166
    .line 167
    :cond_6
    iget-object v5, v3, Laj;->E:Landroid/view/View;

    .line 168
    .line 169
    if-eqz v5, :cond_8

    .line 170
    .line 171
    iget-object v5, v3, Laj;->D:Landroid/view/ViewGroup;

    .line 172
    .line 173
    if-eqz v5, :cond_8

    .line 174
    .line 175
    invoke-virtual {v3}, Laj;->j()Lpj;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-virtual {v6}, Lpj;->D()Lqg;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-static {v5, v6}, Loe;->f(Landroid/view/ViewGroup;Lqg;)Loe;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-static {v2}, Lpj;->E(I)Z

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-eqz v6, :cond_7

    .line 192
    .line 193
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    :cond_7
    invoke-virtual {v5, v1, v8, p0}, Loe;->a(IILxj;)V

    .line 197
    .line 198
    .line 199
    :cond_8
    iput v8, v3, Laj;->a:I

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :pswitch_c
    iput-boolean v4, v3, Laj;->n:Z

    .line 203
    .line 204
    iput v2, v3, Laj;->a:I

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :pswitch_d
    invoke-virtual {p0}, Lxj;->h()V

    .line 208
    .line 209
    .line 210
    iput v1, v3, Laj;->a:I

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :pswitch_e
    invoke-virtual {p0}, Lxj;->g()V

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :pswitch_f
    invoke-virtual {p0}, Lxj;->i()V

    .line 218
    .line 219
    .line 220
    :goto_1
    move v5, v1

    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_9
    if-nez v5, :cond_d

    .line 224
    .line 225
    const/4 v5, -0x1

    .line 226
    if-ne v7, v5, :cond_d

    .line 227
    .line 228
    iget-boolean v5, v3, Laj;->l:Z

    .line 229
    .line 230
    if-eqz v5, :cond_d

    .line 231
    .line 232
    invoke-virtual {v3}, Laj;->n()Z

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    if-nez v5, :cond_d

    .line 237
    .line 238
    invoke-static {v8}, Lpj;->E(I)Z

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    if-eqz v5, :cond_a

    .line 243
    .line 244
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    :cond_a
    iget-object v5, v0, Lle;->d:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v5, Ltj;

    .line 250
    .line 251
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    invoke-static {v8}, Lpj;->E(I)Z

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    if-eqz v6, :cond_b

    .line 259
    .line 260
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    :cond_b
    iget-object v6, v3, Laj;->e:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {v5, v6}, Ltj;->c(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, p0}, Lle;->j(Lxj;)V

    .line 269
    .line 270
    .line 271
    invoke-static {v8}, Lpj;->E(I)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_c

    .line 276
    .line 277
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    :cond_c
    invoke-virtual {v3}, Laj;->l()V

    .line 281
    .line 282
    .line 283
    :cond_d
    iget-boolean v0, v3, Laj;->I:Z

    .line 284
    .line 285
    if-eqz v0, :cond_13

    .line 286
    .line 287
    iget-object v0, v3, Laj;->E:Landroid/view/View;

    .line 288
    .line 289
    if-eqz v0, :cond_11

    .line 290
    .line 291
    iget-object v0, v3, Laj;->D:Landroid/view/ViewGroup;

    .line 292
    .line 293
    if-eqz v0, :cond_11

    .line 294
    .line 295
    invoke-virtual {v3}, Laj;->j()Lpj;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    invoke-virtual {v5}, Lpj;->D()Lqg;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    invoke-static {v0, v5}, Loe;->f(Landroid/view/ViewGroup;Lqg;)Loe;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    iget-boolean v5, v3, Laj;->y:Z

    .line 308
    .line 309
    if-eqz v5, :cond_f

    .line 310
    .line 311
    invoke-static {v2}, Lpj;->E(I)Z

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-eqz v2, :cond_e

    .line 316
    .line 317
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    :cond_e
    invoke-virtual {v0, v8, v1, p0}, Loe;->a(IILxj;)V

    .line 321
    .line 322
    .line 323
    goto :goto_2

    .line 324
    :cond_f
    invoke-static {v2}, Lpj;->E(I)Z

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    if-eqz v5, :cond_10

    .line 329
    .line 330
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    :cond_10
    invoke-virtual {v0, v2, v1, p0}, Loe;->a(IILxj;)V

    .line 334
    .line 335
    .line 336
    :cond_11
    :goto_2
    iget-object v0, v3, Laj;->r:Lpj;

    .line 337
    .line 338
    if-eqz v0, :cond_12

    .line 339
    .line 340
    iget-boolean v2, v3, Laj;->k:Z

    .line 341
    .line 342
    if-eqz v2, :cond_12

    .line 343
    .line 344
    invoke-static {v3}, Lpj;->F(Laj;)Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-eqz v2, :cond_12

    .line 349
    .line 350
    iput-boolean v1, v0, Lpj;->D:Z

    .line 351
    .line 352
    :cond_12
    iput-boolean v4, v3, Laj;->I:Z

    .line 353
    .line 354
    iget-object v0, v3, Laj;->t:Lqj;

    .line 355
    .line 356
    invoke-virtual {v0}, Lpj;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    .line 358
    .line 359
    :cond_13
    iput-boolean v4, p0, Lxj;->d:Z

    .line 360
    .line 361
    return-void

    .line 362
    :goto_3
    iput-boolean v4, p0, Lxj;->d:Z

    .line 363
    .line 364
    throw v0

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final l()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lpj;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lxj;->c:Laj;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, v1, Laj;->t:Lqj;

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    invoke-virtual {v0, v2}, Lpj;->t(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v1, Laj;->E:Landroid/view/View;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, v1, Laj;->N:Lbk;

    .line 24
    .line 25
    sget-object v2, Lon;->ON_PAUSE:Lon;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lbk;->c(Lon;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, v1, Laj;->M:Ltn;

    .line 31
    .line 32
    sget-object v2, Lon;->ON_PAUSE:Lon;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ltn;->d(Lon;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x6

    .line 38
    iput v0, v1, Laj;->a:I

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, v1, Laj;->C:Z

    .line 42
    .line 43
    iget-object p0, p0, Lxj;->a:Ls4;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Ls4;->i(Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final m(Ljava/lang/ClassLoader;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lxj;->c:Laj;

    .line 2
    .line 3
    iget-object v0, p0, Laj;->b:Landroid/os/Bundle;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Laj;->b:Landroid/os/Bundle;

    .line 12
    .line 13
    const-string v0, "android:view_state"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Laj;->c:Landroid/util/SparseArray;

    .line 20
    .line 21
    iget-object p1, p0, Laj;->b:Landroid/os/Bundle;

    .line 22
    .line 23
    const-string v0, "android:view_registry_state"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Laj;->d:Landroid/os/Bundle;

    .line 30
    .line 31
    iget-object p1, p0, Laj;->b:Landroid/os/Bundle;

    .line 32
    .line 33
    const-string v0, "android:target_state"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Laj;->h:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Laj;->b:Landroid/os/Bundle;

    .line 44
    .line 45
    const-string v0, "android:target_req_state"

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, p0, Laj;->i:I

    .line 53
    .line 54
    :cond_1
    iget-object p1, p0, Laj;->b:Landroid/os/Bundle;

    .line 55
    .line 56
    const-string v0, "android:user_visible_hint"

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput-boolean p1, p0, Laj;->G:Z

    .line 64
    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    iput-boolean v1, p0, Laj;->F:Z

    .line 68
    .line 69
    :cond_2
    :goto_0
    return-void
.end method

.method public final n()V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lpj;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lxj;->c:Laj;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, v1, Laj;->H:Lzi;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    move-object v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, v0, Lzi;->k:Landroid/view/View;

    .line 21
    .line 22
    :goto_0
    if-eqz v0, :cond_4

    .line 23
    .line 24
    iget-object v3, v1, Laj;->E:Landroid/view/View;

    .line 25
    .line 26
    if-ne v0, v3, :cond_2

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    :goto_1
    if-eqz v3, :cond_4

    .line 34
    .line 35
    iget-object v4, v1, Laj;->E:Landroid/view/View;

    .line 36
    .line 37
    if-ne v3, v4, :cond_3

    .line 38
    .line 39
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    invoke-static {v3}, Lpj;->E(I)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    iget-object v0, v1, Laj;->E:Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    :goto_3
    invoke-virtual {v1}, Laj;->f()Lzi;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v2, v0, Lzi;->k:Landroid/view/View;

    .line 75
    .line 76
    iget-object v0, v1, Laj;->t:Lqj;

    .line 77
    .line 78
    invoke-virtual {v0}, Lpj;->K()V

    .line 79
    .line 80
    .line 81
    iget-object v0, v1, Laj;->t:Lqj;

    .line 82
    .line 83
    const/4 v3, 0x1

    .line 84
    invoke-virtual {v0, v3}, Lpj;->y(Z)Z

    .line 85
    .line 86
    .line 87
    const/4 v0, 0x7

    .line 88
    iput v0, v1, Laj;->a:I

    .line 89
    .line 90
    iput-boolean v3, v1, Laj;->C:Z

    .line 91
    .line 92
    iget-object v3, v1, Laj;->M:Ltn;

    .line 93
    .line 94
    sget-object v4, Lon;->ON_RESUME:Lon;

    .line 95
    .line 96
    invoke-virtual {v3, v4}, Ltn;->d(Lon;)V

    .line 97
    .line 98
    .line 99
    iget-object v3, v1, Laj;->E:Landroid/view/View;

    .line 100
    .line 101
    if-eqz v3, :cond_5

    .line 102
    .line 103
    iget-object v3, v1, Laj;->N:Lbk;

    .line 104
    .line 105
    iget-object v3, v3, Lbk;->c:Ltn;

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Ltn;->d(Lon;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    iget-object v3, v1, Laj;->t:Lqj;

    .line 111
    .line 112
    const/4 v4, 0x0

    .line 113
    iput-boolean v4, v3, Lpj;->E:Z

    .line 114
    .line 115
    iput-boolean v4, v3, Lpj;->F:Z

    .line 116
    .line 117
    iget-object v5, v3, Lpj;->L:Ltj;

    .line 118
    .line 119
    iput-boolean v4, v5, Ltj;->g:Z

    .line 120
    .line 121
    invoke-virtual {v3, v0}, Lpj;->t(I)V

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Lxj;->a:Ls4;

    .line 125
    .line 126
    invoke-virtual {p0, v4}, Ls4;->l(Z)V

    .line 127
    .line 128
    .line 129
    iput-object v2, v1, Laj;->b:Landroid/os/Bundle;

    .line 130
    .line 131
    iput-object v2, v1, Laj;->c:Landroid/util/SparseArray;

    .line 132
    .line 133
    iput-object v2, v1, Laj;->d:Landroid/os/Bundle;

    .line 134
    .line 135
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object p0, p0, Lxj;->c:Laj;

    .line 2
    .line 3
    iget-object v0, p0, Laj;->E:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Lpj;->E(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Laj;->E:Landroid/view/View;

    .line 19
    .line 20
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Laj;->E:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-lez v1, :cond_2

    .line 38
    .line 39
    iput-object v0, p0, Laj;->c:Landroid/util/SparseArray;

    .line 40
    .line 41
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Laj;->N:Lbk;

    .line 47
    .line 48
    iget-object v1, v1, Lbk;->d:Lcz;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lcz;->c(Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_3

    .line 58
    .line 59
    iput-object v0, p0, Laj;->d:Landroid/os/Bundle;

    .line 60
    .line 61
    :cond_3
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lpj;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lxj;->c:Laj;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, v1, Laj;->t:Lqj;

    .line 14
    .line 15
    invoke-virtual {v0}, Lpj;->K()V

    .line 16
    .line 17
    .line 18
    iget-object v0, v1, Laj;->t:Lqj;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v2}, Lpj;->y(Z)Z

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x5

    .line 25
    iput v0, v1, Laj;->a:I

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    iput-boolean v2, v1, Laj;->C:Z

    .line 29
    .line 30
    invoke-virtual {v1}, Laj;->w()V

    .line 31
    .line 32
    .line 33
    iget-boolean v3, v1, Laj;->C:Z

    .line 34
    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    iget-object v3, v1, Laj;->M:Ltn;

    .line 38
    .line 39
    sget-object v4, Lon;->ON_START:Lon;

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ltn;->d(Lon;)V

    .line 42
    .line 43
    .line 44
    iget-object v3, v1, Laj;->E:Landroid/view/View;

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    iget-object v3, v1, Laj;->N:Lbk;

    .line 49
    .line 50
    iget-object v3, v3, Lbk;->c:Ltn;

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ltn;->d(Lon;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v1, v1, Laj;->t:Lqj;

    .line 56
    .line 57
    iput-boolean v2, v1, Lpj;->E:Z

    .line 58
    .line 59
    iput-boolean v2, v1, Lpj;->F:Z

    .line 60
    .line 61
    iget-object v3, v1, Lpj;->L:Ltj;

    .line 62
    .line 63
    iput-boolean v2, v3, Ltj;->g:Z

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Lpj;->t(I)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lxj;->a:Ls4;

    .line 69
    .line 70
    invoke-virtual {p0, v2}, Ls4;->n(Z)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    const-string p0, " did not call through to super.onStart()"

    .line 75
    .line 76
    invoke-static {v1, p0}, Lg9;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final q()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lpj;->E(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lxj;->c:Laj;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, v1, Laj;->t:Lqj;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    iput-boolean v2, v0, Lpj;->F:Z

    .line 17
    .line 18
    iget-object v3, v0, Lpj;->L:Ltj;

    .line 19
    .line 20
    iput-boolean v2, v3, Ltj;->g:Z

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    invoke-virtual {v0, v2}, Lpj;->t(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Laj;->E:Landroid/view/View;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, v1, Laj;->N:Lbk;

    .line 31
    .line 32
    sget-object v3, Lon;->ON_STOP:Lon;

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Lbk;->c(Lon;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, v1, Laj;->M:Ltn;

    .line 38
    .line 39
    sget-object v3, Lon;->ON_STOP:Lon;

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ltn;->d(Lon;)V

    .line 42
    .line 43
    .line 44
    iput v2, v1, Laj;->a:I

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, v1, Laj;->C:Z

    .line 48
    .line 49
    invoke-virtual {v1}, Laj;->x()V

    .line 50
    .line 51
    .line 52
    iget-boolean v2, v1, Laj;->C:Z

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    iget-object p0, p0, Lxj;->a:Ls4;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ls4;->o(Z)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    const-string p0, " did not call through to super.onStop()"

    .line 63
    .line 64
    invoke-static {v1, p0}, Lg9;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
