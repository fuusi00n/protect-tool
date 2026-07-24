.class public Landroidx/recyclerview/widget/LinearLayoutManager;
.super Lww;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lgx;


# instance fields
.field public final A:Leo;

.field public final B:Lfo;

.field public final C:I

.field public final D:[I

.field public p:I

.field public q:Lgo;

.field public r:Lqt;

.field public s:Z

.field public final t:Z

.field public u:Z

.field public v:Z

.field public final w:Z

.field public x:I

.field public y:I

.field public z:Lho;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 77
    invoke-direct {p0}, Lww;-><init>()V

    const/4 v0, 0x1

    .line 78
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x0

    .line 79
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 80
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 81
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 82
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    const/high16 v0, -0x80000000

    .line 84
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lho;

    .line 86
    new-instance v2, Leo;

    invoke-direct {v2}, Leo;-><init>()V

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Leo;

    .line 87
    new-instance v2, Lfo;

    .line 88
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Lfo;

    const/4 v2, 0x2

    .line 90
    iput v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:I

    .line 91
    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    .line 92
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z0(I)V

    .line 93
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    .line 94
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    if-nez p1, :cond_0

    return-void

    .line 95
    :cond_0
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 96
    invoke-virtual {p0}, Lww;->l0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lww;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 18
    .line 19
    const/high16 v0, -0x80000000

    .line 20
    .line 21
    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lho;

    .line 25
    .line 26
    new-instance v1, Leo;

    .line 27
    .line 28
    invoke-direct {v1}, Leo;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Leo;

    .line 32
    .line 33
    new-instance v1, Lfo;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Lfo;

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    iput v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:I

    .line 42
    .line 43
    new-array v1, v1, [I

    .line 44
    .line 45
    iput-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    .line 46
    .line 47
    invoke-static {p1, p2, p3, p4}, Lww;->I(Landroid/content/Context;Landroid/util/AttributeSet;II)Lvw;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget p2, p1, Lvw;->a:I

    .line 52
    .line 53
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->Z0(I)V

    .line 54
    .line 55
    .line 56
    iget-boolean p2, p1, Lvw;->c:Z

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-boolean p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 62
    .line 63
    if-ne p2, p3, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iput-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 67
    .line 68
    invoke-virtual {p0}, Lww;->l0()V

    .line 69
    .line 70
    .line 71
    :goto_0
    iget-boolean p1, p1, Lvw;->d:Z

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a1(Z)V

    .line 74
    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public A0(Lhx;[I)V
    .locals 2

    .line 1
    iget p1, p1, Lhx;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, -0x1

    .line 5
    if-eq p1, v1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 8
    .line 9
    invoke-virtual {p1}, Lqt;->k()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p1, v0

    .line 15
    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 16
    .line 17
    iget p0, p0, Lgo;->f:I

    .line 18
    .line 19
    if-ne p0, v1, :cond_1

    .line 20
    .line 21
    move p0, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move p0, p1

    .line 24
    move p1, v0

    .line 25
    :goto_1
    aput p1, p2, v0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    aput p0, p2, p1

    .line 29
    .line 30
    return-void
.end method

.method public B0(Lhx;Lgo;Lcl;)V
    .locals 0

    .line 1
    iget p0, p2, Lgo;->d:I

    .line 2
    .line 3
    if-ltz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lhx;->b()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ge p0, p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iget p2, p2, Lgo;->g:I

    .line 13
    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p3, p0, p1}, Lcl;->a(II)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final C0(Lhx;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lww;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 13
    .line 14
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    .line 15
    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0(Z)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    .line 27
    .line 28
    move-object v4, p0

    .line 29
    move-object v0, p1

    .line 30
    invoke-static/range {v0 .. v5}, Lns;->f(Lhx;Lqt;Landroid/view/View;Landroid/view/View;Lww;Z)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final D0(Lhx;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lww;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 13
    .line 14
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    .line 15
    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0(Z)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    .line 27
    .line 28
    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 29
    .line 30
    move-object v4, p0

    .line 31
    move-object v0, p1

    .line 32
    invoke-static/range {v0 .. v6}, Lns;->g(Lhx;Lqt;Landroid/view/View;Landroid/view/View;Lww;ZZ)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public final E0(Lhx;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lww;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 13
    .line 14
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    .line 15
    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0(Z)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->w:Z

    .line 27
    .line 28
    move-object v4, p0

    .line 29
    move-object v0, p1

    .line 30
    invoke-static/range {v0 .. v5}, Lns;->h(Lhx;Lqt;Landroid/view/View;Landroid/view/View;Lww;Z)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final F0(I)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_b

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq p1, v2, :cond_8

    .line 7
    .line 8
    const/16 v2, 0x11

    .line 9
    .line 10
    const/high16 v3, -0x80000000

    .line 11
    .line 12
    if-eq p1, v2, :cond_6

    .line 13
    .line 14
    const/16 v2, 0x21

    .line 15
    .line 16
    if-eq p1, v2, :cond_4

    .line 17
    .line 18
    const/16 v0, 0x42

    .line 19
    .line 20
    if-eq p1, v0, :cond_2

    .line 21
    .line 22
    const/16 v0, 0x82

    .line 23
    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    return v3

    .line 27
    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 28
    .line 29
    if-ne p0, v1, :cond_1

    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    return v3

    .line 33
    :cond_2
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 34
    .line 35
    if-nez p0, :cond_3

    .line 36
    .line 37
    return v1

    .line 38
    :cond_3
    return v3

    .line 39
    :cond_4
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 40
    .line 41
    if-ne p0, v1, :cond_5

    .line 42
    .line 43
    return v0

    .line 44
    :cond_5
    return v3

    .line 45
    :cond_6
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 46
    .line 47
    if-nez p0, :cond_7

    .line 48
    .line 49
    return v0

    .line 50
    :cond_7
    return v3

    .line 51
    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 52
    .line 53
    if-ne p1, v1, :cond_9

    .line 54
    .line 55
    return v1

    .line 56
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0()Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_a

    .line 61
    .line 62
    return v0

    .line 63
    :cond_a
    return v1

    .line 64
    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 65
    .line 66
    if-ne p1, v1, :cond_c

    .line 67
    .line 68
    return v0

    .line 69
    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0()Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_d

    .line 74
    .line 75
    return v1

    .line 76
    :cond_d
    return v0
.end method

.method public final G0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lgo;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lgo;->a:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput v1, v0, Lgo;->h:I

    .line 15
    .line 16
    iput v1, v0, Lgo;->i:I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, v0, Lgo;->k:Ljava/util/List;

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final H0(Lcx;Lgo;Lhx;Z)I
    .locals 7

    .line 1
    iget v0, p2, Lgo;->c:I

    .line 2
    .line 3
    iget v1, p2, Lgo;->g:I

    .line 4
    .line 5
    const/high16 v2, -0x80000000

    .line 6
    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    iput v1, p2, Lgo;->g:I

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0(Lcx;Lgo;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget v1, p2, Lgo;->c:I

    .line 18
    .line 19
    iget v3, p2, Lgo;->h:I

    .line 20
    .line 21
    add-int/2addr v1, v3

    .line 22
    :cond_2
    iget-boolean v3, p2, Lgo;->l:Z

    .line 23
    .line 24
    if-nez v3, :cond_3

    .line 25
    .line 26
    if-lez v1, :cond_9

    .line 27
    .line 28
    :cond_3
    iget v3, p2, Lgo;->d:I

    .line 29
    .line 30
    if-ltz v3, :cond_9

    .line 31
    .line 32
    invoke-virtual {p3}, Lhx;->b()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ge v3, v4, :cond_9

    .line 37
    .line 38
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->B:Lfo;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    iput v4, v3, Lfo;->a:I

    .line 42
    .line 43
    iput-boolean v4, v3, Lfo;->b:Z

    .line 44
    .line 45
    iput-boolean v4, v3, Lfo;->c:Z

    .line 46
    .line 47
    iput-boolean v4, v3, Lfo;->d:Z

    .line 48
    .line 49
    invoke-virtual {p0, p1, p3, p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->T0(Lcx;Lhx;Lgo;Lfo;)V

    .line 50
    .line 51
    .line 52
    iget-boolean v4, v3, Lfo;->b:Z

    .line 53
    .line 54
    if-eqz v4, :cond_4

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    iget v4, p2, Lgo;->b:I

    .line 58
    .line 59
    iget v5, v3, Lfo;->a:I

    .line 60
    .line 61
    iget v6, p2, Lgo;->f:I

    .line 62
    .line 63
    mul-int/2addr v6, v5

    .line 64
    add-int/2addr v6, v4

    .line 65
    iput v6, p2, Lgo;->b:I

    .line 66
    .line 67
    iget-boolean v4, v3, Lfo;->c:Z

    .line 68
    .line 69
    if-eqz v4, :cond_5

    .line 70
    .line 71
    iget-object v4, p2, Lgo;->k:Ljava/util/List;

    .line 72
    .line 73
    if-nez v4, :cond_5

    .line 74
    .line 75
    iget-boolean v4, p3, Lhx;->g:Z

    .line 76
    .line 77
    if-nez v4, :cond_6

    .line 78
    .line 79
    :cond_5
    iget v4, p2, Lgo;->c:I

    .line 80
    .line 81
    sub-int/2addr v4, v5

    .line 82
    iput v4, p2, Lgo;->c:I

    .line 83
    .line 84
    sub-int/2addr v1, v5

    .line 85
    :cond_6
    iget v4, p2, Lgo;->g:I

    .line 86
    .line 87
    if-eq v4, v2, :cond_8

    .line 88
    .line 89
    add-int/2addr v4, v5

    .line 90
    iput v4, p2, Lgo;->g:I

    .line 91
    .line 92
    iget v5, p2, Lgo;->c:I

    .line 93
    .line 94
    if-gez v5, :cond_7

    .line 95
    .line 96
    add-int/2addr v4, v5

    .line 97
    iput v4, p2, Lgo;->g:I

    .line 98
    .line 99
    :cond_7
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->V0(Lcx;Lgo;)V

    .line 100
    .line 101
    .line 102
    :cond_8
    if-eqz p4, :cond_2

    .line 103
    .line 104
    iget-boolean v3, v3, Lfo;->d:Z

    .line 105
    .line 106
    if-eqz v3, :cond_2

    .line 107
    .line 108
    :cond_9
    :goto_0
    iget p0, p2, Lgo;->c:I

    .line 109
    .line 110
    sub-int/2addr v0, p0

    .line 111
    return v0
.end method

.method public final I0(Z)Landroid/view/View;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0}, Lww;->v()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(IIZ)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lww;->v()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(IIZ)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final J0(Z)Landroid/view/View;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lww;->v()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(IIZ)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0}, Lww;->v()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(IIZ)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final K0()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lww;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, -0x1

    .line 9
    invoke-virtual {p0, v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(IIZ)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    invoke-static {p0}, Lww;->H(Landroid/view/View;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final L()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final L0(II)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0()V

    .line 2
    .line 3
    .line 4
    if-le p2, p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    if-ge p2, p1, :cond_3

    .line 8
    .line 9
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lww;->u(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lqt;->e(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 20
    .line 21
    invoke-virtual {v1}, Lqt;->j()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ge v0, v1, :cond_1

    .line 26
    .line 27
    const/16 v0, 0x4104

    .line 28
    .line 29
    const/16 v1, 0x4004

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/16 v0, 0x1041

    .line 33
    .line 34
    const/16 v1, 0x1001

    .line 35
    .line 36
    :goto_1
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    iget-object p0, p0, Lww;->c:Ls4;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2, v0, v1}, Ls4;->s(IIII)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_2
    iget-object p0, p0, Lww;->d:Ls4;

    .line 48
    .line 49
    invoke-virtual {p0, p1, p2, v0, v1}, Ls4;->s(IIII)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_3
    invoke-virtual {p0, p1}, Lww;->u(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public final M0(IIZ)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x140

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    const/16 p3, 0x6003

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p3, v0

    .line 12
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lww;->c:Ls4;

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2, p3, v0}, Ls4;->s(IIII)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    iget-object p0, p0, Lww;->d:Ls4;

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2, p3, v0}, Ls4;->s(IIII)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public N0(Lcx;Lhx;III)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 5
    .line 6
    invoke-virtual {p1}, Lqt;->j()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 11
    .line 12
    invoke-virtual {p2}, Lqt;->g()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-le p4, p3, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, -0x1

    .line 21
    :goto_0
    const/4 v1, 0x0

    .line 22
    move-object v2, v1

    .line 23
    :goto_1
    if-eq p3, p4, :cond_5

    .line 24
    .line 25
    invoke-virtual {p0, p3}, Lww;->u(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Lww;->H(Landroid/view/View;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-ltz v4, :cond_4

    .line 34
    .line 35
    if-ge v4, p5, :cond_4

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lxw;

    .line 42
    .line 43
    iget-object v4, v4, Lxw;->a:Lkx;

    .line 44
    .line 45
    invoke-virtual {v4}, Lkx;->h()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    if-nez v2, :cond_4

    .line 52
    .line 53
    move-object v2, v3

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 56
    .line 57
    invoke-virtual {v4, v3}, Lqt;->e(Landroid/view/View;)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-ge v4, p2, :cond_3

    .line 62
    .line 63
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 64
    .line 65
    invoke-virtual {v4, v3}, Lqt;->b(Landroid/view/View;)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-ge v4, p1, :cond_2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    return-object v3

    .line 73
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 74
    .line 75
    move-object v1, v3

    .line 76
    :cond_4
    :goto_3
    add-int/2addr p3, v0

    .line 77
    goto :goto_1

    .line 78
    :cond_5
    if-eqz v1, :cond_6

    .line 79
    .line 80
    return-object v1

    .line 81
    :cond_6
    return-object v2
.end method

.method public final O0(ILcx;Lhx;Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqt;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sub-int/2addr v0, p1

    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    neg-int v0, v0

    .line 11
    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0(ILcx;Lhx;)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    neg-int p2, p2

    .line 16
    add-int/2addr p1, p2

    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 20
    .line 21
    invoke-virtual {p3}, Lqt;->g()I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    sub-int/2addr p3, p1

    .line 26
    if-lez p3, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 29
    .line 30
    invoke-virtual {p0, p3}, Lqt;->n(I)V

    .line 31
    .line 32
    .line 33
    add-int/2addr p3, p2

    .line 34
    return p3

    .line 35
    :cond_0
    return p2

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final P0(ILcx;Lhx;Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqt;->j()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sub-int v0, p1, v0

    .line 8
    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0(ILcx;Lhx;)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    neg-int p2, p2

    .line 16
    add-int/2addr p1, p2

    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    iget-object p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 20
    .line 21
    invoke-virtual {p3}, Lqt;->j()I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    sub-int/2addr p1, p3

    .line 26
    if-lez p1, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 29
    .line 30
    neg-int p3, p1

    .line 31
    invoke-virtual {p0, p3}, Lqt;->n(I)V

    .line 32
    .line 33
    .line 34
    sub-int/2addr p2, p1

    .line 35
    :cond_0
    return p2

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final Q0()Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lww;->v()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0, v0}, Lww;->u(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final R(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final R0()Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lww;->v()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, v0}, Lww;->u(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public S(Landroid/view/View;ILcx;Lhx;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->X0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lww;->v()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->F0(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/high16 p2, -0x80000000

    .line 16
    .line 17
    if-ne p1, p2, :cond_1

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 24
    .line 25
    invoke-virtual {v0}, Lqt;->k()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    int-to-float v0, v0

    .line 30
    const v1, 0x3eaaaaab

    .line 31
    .line 32
    .line 33
    mul-float/2addr v0, v1

    .line 34
    float-to-int v0, v0

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0, p1, v0, v1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->b1(IIZLhx;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 40
    .line 41
    iput p2, v0, Lgo;->g:I

    .line 42
    .line 43
    iput-boolean v1, v0, Lgo;->a:Z

    .line 44
    .line 45
    const/4 p2, 0x1

    .line 46
    invoke-virtual {p0, p3, v0, p4, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(Lcx;Lgo;Lhx;Z)I

    .line 47
    .line 48
    .line 49
    iget-boolean p3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 50
    .line 51
    const/4 p4, -0x1

    .line 52
    if-ne p1, p4, :cond_3

    .line 53
    .line 54
    if-eqz p3, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0}, Lww;->v()I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    sub-int/2addr p3, p2

    .line 61
    invoke-virtual {p0, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0(II)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0}, Lww;->v()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0(II)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    if-eqz p3, :cond_4

    .line 76
    .line 77
    invoke-virtual {p0}, Lww;->v()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0(II)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual {p0}, Lww;->v()I

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    sub-int/2addr p3, p2

    .line 91
    invoke-virtual {p0, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0(II)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    :goto_0
    if-ne p1, p4, :cond_5

    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0()Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    goto :goto_1

    .line 102
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q0()Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->hasFocusable()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_7

    .line 111
    .line 112
    if-nez p2, :cond_6

    .line 113
    .line 114
    :goto_2
    const/4 p0, 0x0

    .line 115
    :cond_6
    return-object p0

    .line 116
    :cond_7
    return-object p2
.end method

.method public final S0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lww;->C()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final T(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lww;->T(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lww;->v()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0}, Lww;->v()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0, v0, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->M0(IIZ)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v0}, Lww;->H(Landroid/view/View;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public T0(Lcx;Lhx;Lgo;Lfo;)V
    .locals 10

    .line 1
    invoke-virtual {p3, p1}, Lgo;->b(Lcx;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iput-boolean p2, p4, Lfo;->b:Z

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lxw;

    .line 16
    .line 17
    iget-object v1, p3, Lgo;->k:Ljava/util/List;

    .line 18
    .line 19
    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 20
    .line 21
    iget v3, p3, Lgo;->f:I

    .line 22
    .line 23
    const/4 v4, -0x1

    .line 24
    const/4 v5, 0x0

    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    if-ne v3, v4, :cond_1

    .line 28
    .line 29
    move v1, p2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v1, v5

    .line 32
    :goto_0
    if-ne v2, v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, p1, v4, v5}, Lww;->b(Landroid/view/View;IZ)V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    invoke-virtual {p0, p1, v5, v5}, Lww;->b(Landroid/view/View;IZ)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    if-ne v3, v4, :cond_4

    .line 43
    .line 44
    move v1, p2

    .line 45
    goto :goto_1

    .line 46
    :cond_4
    move v1, v5

    .line 47
    :goto_1
    if-ne v2, v1, :cond_5

    .line 48
    .line 49
    invoke-virtual {p0, p1, v4, p2}, Lww;->b(Landroid/view/View;IZ)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_5
    invoke-virtual {p0, p1, v5, p2}, Lww;->b(Landroid/view/View;IZ)V

    .line 54
    .line 55
    .line 56
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lxw;

    .line 61
    .line 62
    iget-object v2, p0, Lww;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    .line 64
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Landroid/graphics/Rect;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 69
    .line 70
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 71
    .line 72
    add-int/2addr v3, v5

    .line 73
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 74
    .line 75
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 76
    .line 77
    add-int/2addr v5, v2

    .line 78
    iget v2, p0, Lww;->n:I

    .line 79
    .line 80
    iget v6, p0, Lww;->l:I

    .line 81
    .line 82
    invoke-virtual {p0}, Lww;->E()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    invoke-virtual {p0}, Lww;->F()I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    add-int/2addr v8, v7

    .line 91
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 92
    .line 93
    add-int/2addr v8, v7

    .line 94
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 95
    .line 96
    add-int/2addr v8, v7

    .line 97
    add-int/2addr v8, v3

    .line 98
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->d()Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    invoke-static {v7, v2, v6, v8, v3}, Lww;->w(ZIIII)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    iget v3, p0, Lww;->o:I

    .line 109
    .line 110
    iget v6, p0, Lww;->m:I

    .line 111
    .line 112
    invoke-virtual {p0}, Lww;->G()I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    invoke-virtual {p0}, Lww;->D()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    add-int/2addr v8, v7

    .line 121
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 122
    .line 123
    add-int/2addr v8, v7

    .line 124
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 125
    .line 126
    add-int/2addr v8, v7

    .line 127
    add-int/2addr v8, v5

    .line 128
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 129
    .line 130
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->e()Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    invoke-static {v7, v3, v6, v8, v5}, Lww;->w(ZIIII)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    invoke-virtual {p0, p1, v2, v3, v1}, Lww;->u0(Landroid/view/View;IILxw;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_6

    .line 143
    .line 144
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 145
    .line 146
    .line 147
    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 148
    .line 149
    invoke-virtual {v1, p1}, Lqt;->c(Landroid/view/View;)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    iput v1, p4, Lfo;->a:I

    .line 154
    .line 155
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 156
    .line 157
    if-ne v1, p2, :cond_9

    .line 158
    .line 159
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0()Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_7

    .line 164
    .line 165
    iget v1, p0, Lww;->n:I

    .line 166
    .line 167
    invoke-virtual {p0}, Lww;->F()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    sub-int/2addr v1, v2

    .line 172
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 173
    .line 174
    invoke-virtual {p0, p1}, Lqt;->d(Landroid/view/View;)I

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    sub-int p0, v1, p0

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_7
    invoke-virtual {p0}, Lww;->E()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 186
    .line 187
    invoke-virtual {p0, p1}, Lqt;->d(Landroid/view/View;)I

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    add-int/2addr p0, v1

    .line 192
    move v9, v1

    .line 193
    move v1, p0

    .line 194
    move p0, v9

    .line 195
    :goto_3
    iget v2, p3, Lgo;->f:I

    .line 196
    .line 197
    iget p3, p3, Lgo;->b:I

    .line 198
    .line 199
    iget v3, p4, Lfo;->a:I

    .line 200
    .line 201
    if-ne v2, v4, :cond_8

    .line 202
    .line 203
    sub-int v2, p3, v3

    .line 204
    .line 205
    move v3, p3

    .line 206
    move p3, v2

    .line 207
    goto :goto_4

    .line 208
    :cond_8
    add-int/2addr v3, p3

    .line 209
    goto :goto_4

    .line 210
    :cond_9
    invoke-virtual {p0}, Lww;->G()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 215
    .line 216
    invoke-virtual {p0, p1}, Lqt;->d(Landroid/view/View;)I

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    add-int/2addr p0, v1

    .line 221
    iget v2, p3, Lgo;->f:I

    .line 222
    .line 223
    iget p3, p3, Lgo;->b:I

    .line 224
    .line 225
    iget v3, p4, Lfo;->a:I

    .line 226
    .line 227
    if-ne v2, v4, :cond_a

    .line 228
    .line 229
    sub-int v2, p3, v3

    .line 230
    .line 231
    move v3, v1

    .line 232
    move v1, p3

    .line 233
    move p3, v3

    .line 234
    move v3, p0

    .line 235
    move p0, v2

    .line 236
    goto :goto_4

    .line 237
    :cond_a
    add-int v2, p3, v3

    .line 238
    .line 239
    move v3, p0

    .line 240
    move p0, p3

    .line 241
    move p3, v1

    .line 242
    move v1, v2

    .line 243
    :goto_4
    invoke-static {p1, p0, p3, v1, v3}, Lww;->N(Landroid/view/View;IIII)V

    .line 244
    .line 245
    .line 246
    iget-object p0, v0, Lxw;->a:Lkx;

    .line 247
    .line 248
    invoke-virtual {p0}, Lkx;->h()Z

    .line 249
    .line 250
    .line 251
    move-result p0

    .line 252
    if-nez p0, :cond_b

    .line 253
    .line 254
    iget-object p0, v0, Lxw;->a:Lkx;

    .line 255
    .line 256
    invoke-virtual {p0}, Lkx;->k()Z

    .line 257
    .line 258
    .line 259
    move-result p0

    .line 260
    if-eqz p0, :cond_c

    .line 261
    .line 262
    :cond_b
    iput-boolean p2, p4, Lfo;->c:Z

    .line 263
    .line 264
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    .line 265
    .line 266
    .line 267
    move-result p0

    .line 268
    iput-boolean p0, p4, Lfo;->d:Z

    .line 269
    .line 270
    return-void
.end method

.method public U0(Lcx;Lhx;Leo;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final V0(Lcx;Lgo;)V
    .locals 5

    .line 1
    iget-boolean v0, p2, Lgo;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    iget-boolean v0, p2, Lgo;->l:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_8

    .line 10
    .line 11
    :cond_0
    iget v0, p2, Lgo;->g:I

    .line 12
    .line 13
    iget v1, p2, Lgo;->i:I

    .line 14
    .line 15
    iget p2, p2, Lgo;->f:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, -0x1

    .line 19
    if-ne p2, v3, :cond_7

    .line 20
    .line 21
    invoke-virtual {p0}, Lww;->v()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-gez v0, :cond_1

    .line 26
    .line 27
    goto/16 :goto_8

    .line 28
    .line 29
    :cond_1
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 30
    .line 31
    invoke-virtual {v3}, Lqt;->f()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    sub-int/2addr v3, v0

    .line 36
    add-int/2addr v3, v1

    .line 37
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    move v0, v2

    .line 42
    :goto_0
    if-ge v0, p2, :cond_e

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lww;->u(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 49
    .line 50
    invoke-virtual {v4, v1}, Lqt;->e(Landroid/view/View;)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-lt v4, v3, :cond_3

    .line 55
    .line 56
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 57
    .line 58
    invoke-virtual {v4, v1}, Lqt;->m(Landroid/view/View;)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-ge v1, v3, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->W0(Lcx;II)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    add-int/lit8 p2, p2, -0x1

    .line 73
    .line 74
    move v0, p2

    .line 75
    :goto_2
    if-ltz v0, :cond_e

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lww;->u(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Lqt;->e(Landroid/view/View;)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-lt v2, v3, :cond_6

    .line 88
    .line 89
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 90
    .line 91
    invoke-virtual {v2, v1}, Lqt;->m(Landroid/view/View;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-ge v1, v3, :cond_5

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->W0(Lcx;II)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_7
    if-gez v0, :cond_8

    .line 106
    .line 107
    goto :goto_8

    .line 108
    :cond_8
    sub-int/2addr v0, v1

    .line 109
    invoke-virtual {p0}, Lww;->v()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 114
    .line 115
    if-eqz v1, :cond_b

    .line 116
    .line 117
    add-int/lit8 p2, p2, -0x1

    .line 118
    .line 119
    move v1, p2

    .line 120
    :goto_4
    if-ltz v1, :cond_e

    .line 121
    .line 122
    invoke-virtual {p0, v1}, Lww;->u(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 127
    .line 128
    invoke-virtual {v3, v2}, Lqt;->b(Landroid/view/View;)I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-gt v3, v0, :cond_a

    .line 133
    .line 134
    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 135
    .line 136
    invoke-virtual {v3, v2}, Lqt;->l(Landroid/view/View;)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-le v2, v0, :cond_9

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_9
    add-int/lit8 v1, v1, -0x1

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_a
    :goto_5
    invoke-virtual {p0, p1, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->W0(Lcx;II)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_b
    move v1, v2

    .line 151
    :goto_6
    if-ge v1, p2, :cond_e

    .line 152
    .line 153
    invoke-virtual {p0, v1}, Lww;->u(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 158
    .line 159
    invoke-virtual {v4, v3}, Lqt;->b(Landroid/view/View;)I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-gt v4, v0, :cond_d

    .line 164
    .line 165
    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 166
    .line 167
    invoke-virtual {v4, v3}, Lqt;->l(Landroid/view/View;)I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-le v3, v0, :cond_c

    .line 172
    .line 173
    goto :goto_7

    .line 174
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_d
    :goto_7
    invoke-virtual {p0, p1, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->W0(Lcx;II)V

    .line 178
    .line 179
    .line 180
    :cond_e
    :goto_8
    return-void
.end method

.method public final W0(Lcx;II)V
    .locals 1

    .line 1
    if-ne p2, p3, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    if-le p3, p2, :cond_1

    .line 5
    .line 6
    add-int/lit8 p3, p3, -0x1

    .line 7
    .line 8
    :goto_0
    if-lt p3, p2, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0, p3}, Lww;->u(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, p3}, Lww;->j0(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcx;->f(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 p3, p3, -0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lww;->u(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, p2}, Lww;->j0(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcx;->f(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 p2, p2, -0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :goto_2
    return-void
.end method

.method public final X0()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 14
    .line 15
    xor-int/2addr v0, v1

    .line 16
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->t:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 22
    .line 23
    return-void
.end method

.method public final Y0(ILcx;Lhx;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lww;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    iput-boolean v2, v0, Lgo;->a:Z

    .line 18
    .line 19
    if-lez p1, :cond_1

    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, -0x1

    .line 24
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p0, v0, v3, v2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b1(IIZLhx;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 32
    .line 33
    iget v4, v2, Lgo;->g:I

    .line 34
    .line 35
    invoke-virtual {p0, p2, v2, p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(Lcx;Lgo;Lhx;Z)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    add-int/2addr p2, v4

    .line 40
    if-gez p2, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    if-le v3, p2, :cond_3

    .line 44
    .line 45
    mul-int p1, v0, p2

    .line 46
    .line 47
    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 48
    .line 49
    neg-int p3, p1

    .line 50
    invoke-virtual {p2, p3}, Lqt;->n(I)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 54
    .line 55
    iput p1, p0, Lgo;->j:I

    .line 56
    .line 57
    return p1

    .line 58
    :cond_4
    :goto_1
    return v1
.end method

.method public final Z0(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string p0, "invalid orientation:"

    .line 8
    .line 9
    invoke-static {p0, p1}, Lg9;->f(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 18
    .line 19
    if-ne p1, v0, :cond_3

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    return-void

    .line 27
    :cond_3
    :goto_1
    invoke-static {p0, p1}, Lqt;->a(Lww;I)Lqt;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Leo;

    .line 34
    .line 35
    iput-object v0, v1, Leo;->a:Lqt;

    .line 36
    .line 37
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 38
    .line 39
    invoke-virtual {p0}, Lww;->l0()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final a(I)Landroid/graphics/PointF;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lww;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lww;->u(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lww;->H(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ge p1, v1, :cond_1

    .line 20
    .line 21
    move v0, v2

    .line 22
    :cond_1
    iget-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 23
    .line 24
    if-eq v0, p1, :cond_2

    .line 25
    .line 26
    const/4 v2, -0x1

    .line 27
    :cond_2
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    if-nez p0, :cond_3

    .line 31
    .line 32
    new-instance p0, Landroid/graphics/PointF;

    .line 33
    .line 34
    int-to-float v0, v2

    .line 35
    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_3
    new-instance p0, Landroid/graphics/PointF;

    .line 40
    .line 41
    int-to-float v0, v2

    .line 42
    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 43
    .line 44
    .line 45
    return-object p0
.end method

.method public a1(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lww;->l0()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public b0(Lcx;Lhx;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lho;

    .line 6
    .line 7
    const/4 v6, -0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 11
    .line 12
    if-eq v1, v6, :cond_1

    .line 13
    .line 14
    :cond_0
    invoke-virtual {v2}, Lhx;->b()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual/range {p0 .. p1}, Lww;->g0(Lcx;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lho;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget v1, v1, Lho;->a:I

    .line 29
    .line 30
    if-ltz v1, :cond_2

    .line 31
    .line 32
    iput v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 33
    .line 34
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0()V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    iput-boolean v7, v1, Lgo;->a:Z

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->X0()V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lww;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    iget-object v3, v0, Lww;->a:Ly2;

    .line 57
    .line 58
    iget-object v3, v3, Ly2;->d:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v3, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_5

    .line 67
    .line 68
    :cond_4
    :goto_0
    const/4 v1, 0x0

    .line 69
    :cond_5
    iget-object v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Leo;

    .line 70
    .line 71
    iget-boolean v3, v9, Leo;->e:Z

    .line 72
    .line 73
    const/high16 v10, -0x80000000

    .line 74
    .line 75
    const/4 v11, 0x1

    .line 76
    if-eqz v3, :cond_9

    .line 77
    .line 78
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 79
    .line 80
    if-ne v3, v6, :cond_9

    .line 81
    .line 82
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lho;

    .line 83
    .line 84
    if-eqz v3, :cond_6

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_6
    if-eqz v1, :cond_7

    .line 88
    .line 89
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 90
    .line 91
    invoke-virtual {v3, v1}, Lqt;->e(Landroid/view/View;)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 96
    .line 97
    invoke-virtual {v4}, Lqt;->g()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-ge v3, v4, :cond_8

    .line 102
    .line 103
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 104
    .line 105
    invoke-virtual {v3, v1}, Lqt;->b(Landroid/view/View;)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 110
    .line 111
    invoke-virtual {v4}, Lqt;->j()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-gt v3, v4, :cond_7

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_7
    :goto_1
    move-object/from16 v1, p1

    .line 119
    .line 120
    goto/16 :goto_15

    .line 121
    .line 122
    :cond_8
    :goto_2
    invoke-static {v1}, Lww;->H(Landroid/view/View;)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-virtual {v9, v1, v3}, Leo;->b(Landroid/view/View;I)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_9
    :goto_3
    invoke-virtual {v9}, Leo;->c()V

    .line 131
    .line 132
    .line 133
    iget-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 134
    .line 135
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 136
    .line 137
    xor-int/2addr v1, v3

    .line 138
    iput-boolean v1, v9, Leo;->d:Z

    .line 139
    .line 140
    iget-boolean v1, v2, Lhx;->g:Z

    .line 141
    .line 142
    if-nez v1, :cond_1a

    .line 143
    .line 144
    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 145
    .line 146
    if-ne v1, v6, :cond_a

    .line 147
    .line 148
    goto/16 :goto_a

    .line 149
    .line 150
    :cond_a
    if-ltz v1, :cond_19

    .line 151
    .line 152
    invoke-virtual {v2}, Lhx;->b()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-lt v1, v3, :cond_b

    .line 157
    .line 158
    goto/16 :goto_9

    .line 159
    .line 160
    :cond_b
    iget v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 161
    .line 162
    iput v1, v9, Leo;->b:I

    .line 163
    .line 164
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lho;

    .line 165
    .line 166
    if-eqz v3, :cond_d

    .line 167
    .line 168
    iget v4, v3, Lho;->a:I

    .line 169
    .line 170
    if-ltz v4, :cond_d

    .line 171
    .line 172
    iget-boolean v1, v3, Lho;->c:Z

    .line 173
    .line 174
    iput-boolean v1, v9, Leo;->d:Z

    .line 175
    .line 176
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 177
    .line 178
    if-eqz v1, :cond_c

    .line 179
    .line 180
    invoke-virtual {v3}, Lqt;->g()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lho;

    .line 185
    .line 186
    iget v3, v3, Lho;->b:I

    .line 187
    .line 188
    sub-int/2addr v1, v3

    .line 189
    iput v1, v9, Leo;->c:I

    .line 190
    .line 191
    :goto_4
    move-object/from16 v1, p1

    .line 192
    .line 193
    goto/16 :goto_14

    .line 194
    .line 195
    :cond_c
    invoke-virtual {v3}, Lqt;->j()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lho;

    .line 200
    .line 201
    iget v3, v3, Lho;->b:I

    .line 202
    .line 203
    add-int/2addr v1, v3

    .line 204
    iput v1, v9, Leo;->c:I

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_d
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    .line 208
    .line 209
    if-ne v3, v10, :cond_17

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    if-eqz v1, :cond_13

    .line 216
    .line 217
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 218
    .line 219
    invoke-virtual {v3, v1}, Lqt;->c(Landroid/view/View;)I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 224
    .line 225
    invoke-virtual {v4}, Lqt;->k()I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    if-le v3, v4, :cond_e

    .line 230
    .line 231
    invoke-virtual {v9}, Leo;->a()V

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_e
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 236
    .line 237
    invoke-virtual {v3, v1}, Lqt;->e(Landroid/view/View;)I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 242
    .line 243
    invoke-virtual {v4}, Lqt;->j()I

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    sub-int/2addr v3, v4

    .line 248
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 249
    .line 250
    if-gez v3, :cond_f

    .line 251
    .line 252
    invoke-virtual {v4}, Lqt;->j()I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    iput v1, v9, Leo;->c:I

    .line 257
    .line 258
    iput-boolean v7, v9, Leo;->d:Z

    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_f
    invoke-virtual {v4}, Lqt;->g()I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 266
    .line 267
    invoke-virtual {v4, v1}, Lqt;->b(Landroid/view/View;)I

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    sub-int/2addr v3, v4

    .line 272
    if-gez v3, :cond_10

    .line 273
    .line 274
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 275
    .line 276
    invoke-virtual {v1}, Lqt;->g()I

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    iput v1, v9, Leo;->c:I

    .line 281
    .line 282
    iput-boolean v11, v9, Leo;->d:Z

    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_10
    iget-boolean v3, v9, Leo;->d:Z

    .line 286
    .line 287
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 288
    .line 289
    if-eqz v3, :cond_12

    .line 290
    .line 291
    invoke-virtual {v4, v1}, Lqt;->b(Landroid/view/View;)I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 296
    .line 297
    iget v4, v3, Lqt;->b:I

    .line 298
    .line 299
    if-ne v10, v4, :cond_11

    .line 300
    .line 301
    move v4, v7

    .line 302
    goto :goto_5

    .line 303
    :cond_11
    invoke-virtual {v3}, Lqt;->k()I

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    iget v3, v3, Lqt;->b:I

    .line 308
    .line 309
    sub-int/2addr v4, v3

    .line 310
    :goto_5
    add-int/2addr v4, v1

    .line 311
    goto :goto_6

    .line 312
    :cond_12
    invoke-virtual {v4, v1}, Lqt;->e(Landroid/view/View;)I

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    :goto_6
    iput v4, v9, Leo;->c:I

    .line 317
    .line 318
    goto :goto_4

    .line 319
    :cond_13
    invoke-virtual {v0}, Lww;->v()I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    if-lez v1, :cond_16

    .line 324
    .line 325
    invoke-virtual {v0, v7}, Lww;->u(I)Landroid/view/View;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-static {v1}, Lww;->H(Landroid/view/View;)I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 334
    .line 335
    if-ge v3, v1, :cond_14

    .line 336
    .line 337
    move v1, v11

    .line 338
    goto :goto_7

    .line 339
    :cond_14
    move v1, v7

    .line 340
    :goto_7
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 341
    .line 342
    if-ne v1, v3, :cond_15

    .line 343
    .line 344
    move v1, v11

    .line 345
    goto :goto_8

    .line 346
    :cond_15
    move v1, v7

    .line 347
    :goto_8
    iput-boolean v1, v9, Leo;->d:Z

    .line 348
    .line 349
    :cond_16
    invoke-virtual {v9}, Leo;->a()V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_4

    .line 353
    .line 354
    :cond_17
    iget-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 355
    .line 356
    iput-boolean v1, v9, Leo;->d:Z

    .line 357
    .line 358
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 359
    .line 360
    if-eqz v1, :cond_18

    .line 361
    .line 362
    invoke-virtual {v3}, Lqt;->g()I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    .line 367
    .line 368
    sub-int/2addr v1, v3

    .line 369
    iput v1, v9, Leo;->c:I

    .line 370
    .line 371
    goto/16 :goto_4

    .line 372
    .line 373
    :cond_18
    invoke-virtual {v3}, Lqt;->j()I

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    .line 378
    .line 379
    add-int/2addr v1, v3

    .line 380
    iput v1, v9, Leo;->c:I

    .line 381
    .line 382
    goto/16 :goto_4

    .line 383
    .line 384
    :cond_19
    :goto_9
    iput v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 385
    .line 386
    iput v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    .line 387
    .line 388
    :cond_1a
    :goto_a
    invoke-virtual {v0}, Lww;->v()I

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    if-nez v1, :cond_1b

    .line 393
    .line 394
    :goto_b
    move-object/from16 v1, p1

    .line 395
    .line 396
    goto/16 :goto_12

    .line 397
    .line 398
    :cond_1b
    iget-object v1, v0, Lww;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 399
    .line 400
    if-nez v1, :cond_1c

    .line 401
    .line 402
    goto :goto_c

    .line 403
    :cond_1c
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    if-eqz v1, :cond_1d

    .line 408
    .line 409
    iget-object v3, v0, Lww;->a:Ly2;

    .line 410
    .line 411
    iget-object v3, v3, Ly2;->d:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast v3, Ljava/util/ArrayList;

    .line 414
    .line 415
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    if-eqz v3, :cond_1e

    .line 420
    .line 421
    :cond_1d
    :goto_c
    const/4 v1, 0x0

    .line 422
    :cond_1e
    if-eqz v1, :cond_1f

    .line 423
    .line 424
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    check-cast v3, Lxw;

    .line 429
    .line 430
    iget-object v4, v3, Lxw;->a:Lkx;

    .line 431
    .line 432
    invoke-virtual {v4}, Lkx;->h()Z

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    if-nez v4, :cond_1f

    .line 437
    .line 438
    iget-object v4, v3, Lxw;->a:Lkx;

    .line 439
    .line 440
    invoke-virtual {v4}, Lkx;->b()I

    .line 441
    .line 442
    .line 443
    move-result v4

    .line 444
    if-ltz v4, :cond_1f

    .line 445
    .line 446
    iget-object v3, v3, Lxw;->a:Lkx;

    .line 447
    .line 448
    invoke-virtual {v3}, Lkx;->b()I

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    invoke-virtual {v2}, Lhx;->b()I

    .line 453
    .line 454
    .line 455
    move-result v4

    .line 456
    if-ge v3, v4, :cond_1f

    .line 457
    .line 458
    invoke-static {v1}, Lww;->H(Landroid/view/View;)I

    .line 459
    .line 460
    .line 461
    move-result v3

    .line 462
    invoke-virtual {v9, v1, v3}, Leo;->b(Landroid/view/View;I)V

    .line 463
    .line 464
    .line 465
    goto/16 :goto_4

    .line 466
    .line 467
    :cond_1f
    iget-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    .line 468
    .line 469
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 470
    .line 471
    if-eq v1, v3, :cond_20

    .line 472
    .line 473
    goto :goto_b

    .line 474
    :cond_20
    iget-boolean v1, v9, Leo;->d:Z

    .line 475
    .line 476
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 477
    .line 478
    if-eqz v1, :cond_22

    .line 479
    .line 480
    if-eqz v3, :cond_21

    .line 481
    .line 482
    invoke-virtual {v0}, Lww;->v()I

    .line 483
    .line 484
    .line 485
    move-result v4

    .line 486
    invoke-virtual {v2}, Lhx;->b()I

    .line 487
    .line 488
    .line 489
    move-result v5

    .line 490
    const/4 v3, 0x0

    .line 491
    move-object/from16 v1, p1

    .line 492
    .line 493
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0(Lcx;Lhx;III)Landroid/view/View;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    goto :goto_d

    .line 498
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lww;->v()I

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    add-int/lit8 v3, v0, -0x1

    .line 503
    .line 504
    const/4 v4, -0x1

    .line 505
    invoke-virtual/range {p2 .. p2}, Lhx;->b()I

    .line 506
    .line 507
    .line 508
    move-result v5

    .line 509
    move-object/from16 v0, p0

    .line 510
    .line 511
    move-object/from16 v1, p1

    .line 512
    .line 513
    move-object/from16 v2, p2

    .line 514
    .line 515
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0(Lcx;Lhx;III)Landroid/view/View;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    :goto_d
    move-object/from16 v0, p0

    .line 520
    .line 521
    move-object/from16 v1, p1

    .line 522
    .line 523
    move-object/from16 v2, p2

    .line 524
    .line 525
    goto :goto_e

    .line 526
    :cond_22
    if-eqz v3, :cond_23

    .line 527
    .line 528
    invoke-virtual/range {p0 .. p0}, Lww;->v()I

    .line 529
    .line 530
    .line 531
    move-result v0

    .line 532
    add-int/lit8 v3, v0, -0x1

    .line 533
    .line 534
    const/4 v4, -0x1

    .line 535
    invoke-virtual/range {p2 .. p2}, Lhx;->b()I

    .line 536
    .line 537
    .line 538
    move-result v5

    .line 539
    move-object/from16 v0, p0

    .line 540
    .line 541
    move-object/from16 v1, p1

    .line 542
    .line 543
    move-object/from16 v2, p2

    .line 544
    .line 545
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0(Lcx;Lhx;III)Landroid/view/View;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    goto :goto_e

    .line 550
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lww;->v()I

    .line 551
    .line 552
    .line 553
    move-result v4

    .line 554
    invoke-virtual/range {p2 .. p2}, Lhx;->b()I

    .line 555
    .line 556
    .line 557
    move-result v5

    .line 558
    const/4 v3, 0x0

    .line 559
    move-object/from16 v0, p0

    .line 560
    .line 561
    move-object/from16 v1, p1

    .line 562
    .line 563
    move-object/from16 v2, p2

    .line 564
    .line 565
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->N0(Lcx;Lhx;III)Landroid/view/View;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    :goto_e
    if-eqz v3, :cond_28

    .line 570
    .line 571
    invoke-static {v3}, Lww;->H(Landroid/view/View;)I

    .line 572
    .line 573
    .line 574
    move-result v4

    .line 575
    iget-boolean v5, v9, Leo;->d:Z

    .line 576
    .line 577
    iget-object v12, v9, Leo;->a:Lqt;

    .line 578
    .line 579
    if-eqz v5, :cond_25

    .line 580
    .line 581
    invoke-virtual {v12, v3}, Lqt;->b(Landroid/view/View;)I

    .line 582
    .line 583
    .line 584
    move-result v5

    .line 585
    iget-object v12, v9, Leo;->a:Lqt;

    .line 586
    .line 587
    iget v13, v12, Lqt;->b:I

    .line 588
    .line 589
    if-ne v10, v13, :cond_24

    .line 590
    .line 591
    move v13, v7

    .line 592
    goto :goto_f

    .line 593
    :cond_24
    invoke-virtual {v12}, Lqt;->k()I

    .line 594
    .line 595
    .line 596
    move-result v13

    .line 597
    iget v12, v12, Lqt;->b:I

    .line 598
    .line 599
    sub-int/2addr v13, v12

    .line 600
    :goto_f
    add-int/2addr v13, v5

    .line 601
    iput v13, v9, Leo;->c:I

    .line 602
    .line 603
    goto :goto_10

    .line 604
    :cond_25
    invoke-virtual {v12, v3}, Lqt;->e(Landroid/view/View;)I

    .line 605
    .line 606
    .line 607
    move-result v5

    .line 608
    iput v5, v9, Leo;->c:I

    .line 609
    .line 610
    :goto_10
    iput v4, v9, Leo;->b:I

    .line 611
    .line 612
    iget-boolean v4, v2, Lhx;->g:Z

    .line 613
    .line 614
    if-nez v4, :cond_2a

    .line 615
    .line 616
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->z0()Z

    .line 617
    .line 618
    .line 619
    move-result v4

    .line 620
    if-eqz v4, :cond_2a

    .line 621
    .line 622
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 623
    .line 624
    invoke-virtual {v4, v3}, Lqt;->e(Landroid/view/View;)I

    .line 625
    .line 626
    .line 627
    move-result v4

    .line 628
    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 629
    .line 630
    invoke-virtual {v5}, Lqt;->g()I

    .line 631
    .line 632
    .line 633
    move-result v5

    .line 634
    if-ge v4, v5, :cond_26

    .line 635
    .line 636
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 637
    .line 638
    invoke-virtual {v4, v3}, Lqt;->b(Landroid/view/View;)I

    .line 639
    .line 640
    .line 641
    move-result v3

    .line 642
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 643
    .line 644
    invoke-virtual {v4}, Lqt;->j()I

    .line 645
    .line 646
    .line 647
    move-result v4

    .line 648
    if-ge v3, v4, :cond_2a

    .line 649
    .line 650
    :cond_26
    iget-boolean v3, v9, Leo;->d:Z

    .line 651
    .line 652
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 653
    .line 654
    if-eqz v3, :cond_27

    .line 655
    .line 656
    invoke-virtual {v4}, Lqt;->g()I

    .line 657
    .line 658
    .line 659
    move-result v3

    .line 660
    goto :goto_11

    .line 661
    :cond_27
    invoke-virtual {v4}, Lqt;->j()I

    .line 662
    .line 663
    .line 664
    move-result v3

    .line 665
    :goto_11
    iput v3, v9, Leo;->c:I

    .line 666
    .line 667
    goto :goto_14

    .line 668
    :cond_28
    :goto_12
    invoke-virtual {v9}, Leo;->a()V

    .line 669
    .line 670
    .line 671
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 672
    .line 673
    if-eqz v3, :cond_29

    .line 674
    .line 675
    invoke-virtual {v2}, Lhx;->b()I

    .line 676
    .line 677
    .line 678
    move-result v3

    .line 679
    sub-int/2addr v3, v11

    .line 680
    goto :goto_13

    .line 681
    :cond_29
    move v3, v7

    .line 682
    :goto_13
    iput v3, v9, Leo;->b:I

    .line 683
    .line 684
    :cond_2a
    :goto_14
    iput-boolean v11, v9, Leo;->e:Z

    .line 685
    .line 686
    :goto_15
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 687
    .line 688
    iget v4, v3, Lgo;->j:I

    .line 689
    .line 690
    if-ltz v4, :cond_2b

    .line 691
    .line 692
    move v4, v11

    .line 693
    goto :goto_16

    .line 694
    :cond_2b
    move v4, v6

    .line 695
    :goto_16
    iput v4, v3, Lgo;->f:I

    .line 696
    .line 697
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    .line 698
    .line 699
    aput v7, v3, v7

    .line 700
    .line 701
    aput v7, v3, v11

    .line 702
    .line 703
    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->A0(Lhx;[I)V

    .line 704
    .line 705
    .line 706
    aget v4, v3, v7

    .line 707
    .line 708
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    .line 709
    .line 710
    .line 711
    move-result v4

    .line 712
    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 713
    .line 714
    invoke-virtual {v5}, Lqt;->j()I

    .line 715
    .line 716
    .line 717
    move-result v5

    .line 718
    add-int/2addr v5, v4

    .line 719
    aget v3, v3, v11

    .line 720
    .line 721
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    .line 722
    .line 723
    .line 724
    move-result v3

    .line 725
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 726
    .line 727
    invoke-virtual {v4}, Lqt;->h()I

    .line 728
    .line 729
    .line 730
    move-result v4

    .line 731
    add-int/2addr v4, v3

    .line 732
    iget-boolean v3, v2, Lhx;->g:Z

    .line 733
    .line 734
    if-eqz v3, :cond_2e

    .line 735
    .line 736
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 737
    .line 738
    if-eq v3, v6, :cond_2e

    .line 739
    .line 740
    iget v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    .line 741
    .line 742
    if-eq v12, v10, :cond_2e

    .line 743
    .line 744
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(I)Landroid/view/View;

    .line 745
    .line 746
    .line 747
    move-result-object v3

    .line 748
    if-eqz v3, :cond_2e

    .line 749
    .line 750
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 751
    .line 752
    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 753
    .line 754
    if-eqz v10, :cond_2c

    .line 755
    .line 756
    invoke-virtual {v12}, Lqt;->g()I

    .line 757
    .line 758
    .line 759
    move-result v10

    .line 760
    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 761
    .line 762
    invoke-virtual {v12, v3}, Lqt;->b(Landroid/view/View;)I

    .line 763
    .line 764
    .line 765
    move-result v3

    .line 766
    sub-int/2addr v10, v3

    .line 767
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    .line 768
    .line 769
    :goto_17
    sub-int/2addr v10, v3

    .line 770
    goto :goto_18

    .line 771
    :cond_2c
    invoke-virtual {v12, v3}, Lqt;->e(Landroid/view/View;)I

    .line 772
    .line 773
    .line 774
    move-result v3

    .line 775
    iget-object v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 776
    .line 777
    invoke-virtual {v10}, Lqt;->j()I

    .line 778
    .line 779
    .line 780
    move-result v10

    .line 781
    sub-int/2addr v3, v10

    .line 782
    iget v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    .line 783
    .line 784
    goto :goto_17

    .line 785
    :goto_18
    if-lez v10, :cond_2d

    .line 786
    .line 787
    add-int/2addr v5, v10

    .line 788
    goto :goto_19

    .line 789
    :cond_2d
    sub-int/2addr v4, v10

    .line 790
    :cond_2e
    :goto_19
    iget-boolean v3, v9, Leo;->d:Z

    .line 791
    .line 792
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 793
    .line 794
    if-eqz v3, :cond_30

    .line 795
    .line 796
    if-eqz v10, :cond_31

    .line 797
    .line 798
    :cond_2f
    move v6, v11

    .line 799
    goto :goto_1a

    .line 800
    :cond_30
    if-eqz v10, :cond_2f

    .line 801
    .line 802
    :cond_31
    :goto_1a
    invoke-virtual {v0, v1, v2, v9, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->U0(Lcx;Lhx;Leo;I)V

    .line 803
    .line 804
    .line 805
    invoke-virtual/range {p0 .. p1}, Lww;->p(Lcx;)V

    .line 806
    .line 807
    .line 808
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 809
    .line 810
    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 811
    .line 812
    invoke-virtual {v6}, Lqt;->i()I

    .line 813
    .line 814
    .line 815
    move-result v6

    .line 816
    if-nez v6, :cond_32

    .line 817
    .line 818
    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 819
    .line 820
    invoke-virtual {v6}, Lqt;->f()I

    .line 821
    .line 822
    .line 823
    move-result v6

    .line 824
    if-nez v6, :cond_32

    .line 825
    .line 826
    move v6, v11

    .line 827
    goto :goto_1b

    .line 828
    :cond_32
    move v6, v7

    .line 829
    :goto_1b
    iput-boolean v6, v3, Lgo;->l:Z

    .line 830
    .line 831
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 832
    .line 833
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 834
    .line 835
    .line 836
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 837
    .line 838
    iput v7, v3, Lgo;->i:I

    .line 839
    .line 840
    iget-boolean v3, v9, Leo;->d:Z

    .line 841
    .line 842
    iget v6, v9, Leo;->b:I

    .line 843
    .line 844
    if-eqz v3, :cond_34

    .line 845
    .line 846
    iget v3, v9, Leo;->c:I

    .line 847
    .line 848
    invoke-virtual {v0, v6, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->d1(II)V

    .line 849
    .line 850
    .line 851
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 852
    .line 853
    iput v5, v3, Lgo;->h:I

    .line 854
    .line 855
    invoke-virtual {v0, v1, v3, v2, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(Lcx;Lgo;Lhx;Z)I

    .line 856
    .line 857
    .line 858
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 859
    .line 860
    iget v5, v3, Lgo;->b:I

    .line 861
    .line 862
    iget v6, v3, Lgo;->d:I

    .line 863
    .line 864
    iget v3, v3, Lgo;->c:I

    .line 865
    .line 866
    if-lez v3, :cond_33

    .line 867
    .line 868
    add-int/2addr v4, v3

    .line 869
    :cond_33
    iget v3, v9, Leo;->b:I

    .line 870
    .line 871
    iget v10, v9, Leo;->c:I

    .line 872
    .line 873
    invoke-virtual {v0, v3, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->c1(II)V

    .line 874
    .line 875
    .line 876
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 877
    .line 878
    iput v4, v3, Lgo;->h:I

    .line 879
    .line 880
    iget v4, v3, Lgo;->d:I

    .line 881
    .line 882
    iget v10, v3, Lgo;->e:I

    .line 883
    .line 884
    add-int/2addr v4, v10

    .line 885
    iput v4, v3, Lgo;->d:I

    .line 886
    .line 887
    invoke-virtual {v0, v1, v3, v2, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(Lcx;Lgo;Lhx;Z)I

    .line 888
    .line 889
    .line 890
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 891
    .line 892
    iget v4, v3, Lgo;->b:I

    .line 893
    .line 894
    iget v3, v3, Lgo;->c:I

    .line 895
    .line 896
    if-lez v3, :cond_36

    .line 897
    .line 898
    invoke-virtual {v0, v6, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->d1(II)V

    .line 899
    .line 900
    .line 901
    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 902
    .line 903
    iput v3, v5, Lgo;->h:I

    .line 904
    .line 905
    invoke-virtual {v0, v1, v5, v2, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(Lcx;Lgo;Lhx;Z)I

    .line 906
    .line 907
    .line 908
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 909
    .line 910
    iget v5, v3, Lgo;->b:I

    .line 911
    .line 912
    goto :goto_1c

    .line 913
    :cond_34
    iget v3, v9, Leo;->c:I

    .line 914
    .line 915
    invoke-virtual {v0, v6, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->c1(II)V

    .line 916
    .line 917
    .line 918
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 919
    .line 920
    iput v4, v3, Lgo;->h:I

    .line 921
    .line 922
    invoke-virtual {v0, v1, v3, v2, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(Lcx;Lgo;Lhx;Z)I

    .line 923
    .line 924
    .line 925
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 926
    .line 927
    iget v4, v3, Lgo;->b:I

    .line 928
    .line 929
    iget v6, v3, Lgo;->d:I

    .line 930
    .line 931
    iget v3, v3, Lgo;->c:I

    .line 932
    .line 933
    if-lez v3, :cond_35

    .line 934
    .line 935
    add-int/2addr v5, v3

    .line 936
    :cond_35
    iget v3, v9, Leo;->b:I

    .line 937
    .line 938
    iget v10, v9, Leo;->c:I

    .line 939
    .line 940
    invoke-virtual {v0, v3, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->d1(II)V

    .line 941
    .line 942
    .line 943
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 944
    .line 945
    iput v5, v3, Lgo;->h:I

    .line 946
    .line 947
    iget v5, v3, Lgo;->d:I

    .line 948
    .line 949
    iget v10, v3, Lgo;->e:I

    .line 950
    .line 951
    add-int/2addr v5, v10

    .line 952
    iput v5, v3, Lgo;->d:I

    .line 953
    .line 954
    invoke-virtual {v0, v1, v3, v2, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(Lcx;Lgo;Lhx;Z)I

    .line 955
    .line 956
    .line 957
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 958
    .line 959
    iget v5, v3, Lgo;->b:I

    .line 960
    .line 961
    iget v3, v3, Lgo;->c:I

    .line 962
    .line 963
    if-lez v3, :cond_36

    .line 964
    .line 965
    invoke-virtual {v0, v6, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->c1(II)V

    .line 966
    .line 967
    .line 968
    iget-object v4, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 969
    .line 970
    iput v3, v4, Lgo;->h:I

    .line 971
    .line 972
    invoke-virtual {v0, v1, v4, v2, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(Lcx;Lgo;Lhx;Z)I

    .line 973
    .line 974
    .line 975
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 976
    .line 977
    iget v4, v3, Lgo;->b:I

    .line 978
    .line 979
    :cond_36
    :goto_1c
    invoke-virtual {v0}, Lww;->v()I

    .line 980
    .line 981
    .line 982
    move-result v3

    .line 983
    if-lez v3, :cond_38

    .line 984
    .line 985
    iget-boolean v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 986
    .line 987
    iget-boolean v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 988
    .line 989
    xor-int/2addr v3, v6

    .line 990
    if-eqz v3, :cond_37

    .line 991
    .line 992
    invoke-virtual {v0, v4, v1, v2, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(ILcx;Lhx;Z)I

    .line 993
    .line 994
    .line 995
    move-result v3

    .line 996
    add-int/2addr v5, v3

    .line 997
    add-int/2addr v4, v3

    .line 998
    invoke-virtual {v0, v5, v1, v2, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(ILcx;Lhx;Z)I

    .line 999
    .line 1000
    .line 1001
    move-result v3

    .line 1002
    :goto_1d
    add-int/2addr v5, v3

    .line 1003
    add-int/2addr v4, v3

    .line 1004
    goto :goto_1e

    .line 1005
    :cond_37
    invoke-virtual {v0, v5, v1, v2, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0(ILcx;Lhx;Z)I

    .line 1006
    .line 1007
    .line 1008
    move-result v3

    .line 1009
    add-int/2addr v5, v3

    .line 1010
    add-int/2addr v4, v3

    .line 1011
    invoke-virtual {v0, v4, v1, v2, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->O0(ILcx;Lhx;Z)I

    .line 1012
    .line 1013
    .line 1014
    move-result v3

    .line 1015
    goto :goto_1d

    .line 1016
    :cond_38
    :goto_1e
    iget-boolean v3, v2, Lhx;->k:Z

    .line 1017
    .line 1018
    if-eqz v3, :cond_40

    .line 1019
    .line 1020
    invoke-virtual {v0}, Lww;->v()I

    .line 1021
    .line 1022
    .line 1023
    move-result v3

    .line 1024
    if-eqz v3, :cond_40

    .line 1025
    .line 1026
    iget-boolean v3, v2, Lhx;->g:Z

    .line 1027
    .line 1028
    if-nez v3, :cond_40

    .line 1029
    .line 1030
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->z0()Z

    .line 1031
    .line 1032
    .line 1033
    move-result v3

    .line 1034
    if-nez v3, :cond_39

    .line 1035
    .line 1036
    goto/16 :goto_24

    .line 1037
    .line 1038
    :cond_39
    iget-object v3, v1, Lcx;->d:Ljava/util/List;

    .line 1039
    .line 1040
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1041
    .line 1042
    .line 1043
    move-result v6

    .line 1044
    invoke-virtual {v0, v7}, Lww;->u(I)Landroid/view/View;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v10

    .line 1048
    invoke-static {v10}, Lww;->H(Landroid/view/View;)I

    .line 1049
    .line 1050
    .line 1051
    move-result v10

    .line 1052
    move v12, v7

    .line 1053
    move v13, v12

    .line 1054
    move v14, v13

    .line 1055
    :goto_1f
    if-ge v12, v6, :cond_3d

    .line 1056
    .line 1057
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v15

    .line 1061
    check-cast v15, Lkx;

    .line 1062
    .line 1063
    invoke-virtual {v15}, Lkx;->h()Z

    .line 1064
    .line 1065
    .line 1066
    move-result v16

    .line 1067
    iget-object v11, v15, Lkx;->a:Landroid/view/View;

    .line 1068
    .line 1069
    if-eqz v16, :cond_3a

    .line 1070
    .line 1071
    goto :goto_21

    .line 1072
    :cond_3a
    invoke-virtual {v15}, Lkx;->b()I

    .line 1073
    .line 1074
    .line 1075
    move-result v15

    .line 1076
    if-ge v15, v10, :cond_3b

    .line 1077
    .line 1078
    const/4 v15, 0x1

    .line 1079
    goto :goto_20

    .line 1080
    :cond_3b
    move v15, v7

    .line 1081
    :goto_20
    iget-boolean v8, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 1082
    .line 1083
    iget-object v7, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 1084
    .line 1085
    if-eq v15, v8, :cond_3c

    .line 1086
    .line 1087
    invoke-virtual {v7, v11}, Lqt;->c(Landroid/view/View;)I

    .line 1088
    .line 1089
    .line 1090
    move-result v7

    .line 1091
    add-int/2addr v13, v7

    .line 1092
    goto :goto_21

    .line 1093
    :cond_3c
    invoke-virtual {v7, v11}, Lqt;->c(Landroid/view/View;)I

    .line 1094
    .line 1095
    .line 1096
    move-result v7

    .line 1097
    add-int/2addr v14, v7

    .line 1098
    :goto_21
    add-int/lit8 v12, v12, 0x1

    .line 1099
    .line 1100
    const/4 v7, 0x0

    .line 1101
    const/4 v11, 0x1

    .line 1102
    goto :goto_1f

    .line 1103
    :cond_3d
    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 1104
    .line 1105
    iput-object v3, v6, Lgo;->k:Ljava/util/List;

    .line 1106
    .line 1107
    if-lez v13, :cond_3e

    .line 1108
    .line 1109
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0()Landroid/view/View;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v3

    .line 1113
    invoke-static {v3}, Lww;->H(Landroid/view/View;)I

    .line 1114
    .line 1115
    .line 1116
    move-result v3

    .line 1117
    invoke-virtual {v0, v3, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->d1(II)V

    .line 1118
    .line 1119
    .line 1120
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 1121
    .line 1122
    iput v13, v3, Lgo;->h:I

    .line 1123
    .line 1124
    const/4 v5, 0x0

    .line 1125
    iput v5, v3, Lgo;->c:I

    .line 1126
    .line 1127
    const/4 v6, 0x0

    .line 1128
    invoke-virtual {v3, v6}, Lgo;->a(Landroid/view/View;)V

    .line 1129
    .line 1130
    .line 1131
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 1132
    .line 1133
    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(Lcx;Lgo;Lhx;Z)I

    .line 1134
    .line 1135
    .line 1136
    goto :goto_22

    .line 1137
    :cond_3e
    const/4 v5, 0x0

    .line 1138
    :goto_22
    if-lez v14, :cond_3f

    .line 1139
    .line 1140
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q0()Landroid/view/View;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v3

    .line 1144
    invoke-static {v3}, Lww;->H(Landroid/view/View;)I

    .line 1145
    .line 1146
    .line 1147
    move-result v3

    .line 1148
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->c1(II)V

    .line 1149
    .line 1150
    .line 1151
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 1152
    .line 1153
    iput v14, v3, Lgo;->h:I

    .line 1154
    .line 1155
    iput v5, v3, Lgo;->c:I

    .line 1156
    .line 1157
    const/4 v6, 0x0

    .line 1158
    invoke-virtual {v3, v6}, Lgo;->a(Landroid/view/View;)V

    .line 1159
    .line 1160
    .line 1161
    iget-object v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 1162
    .line 1163
    invoke-virtual {v0, v1, v3, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->H0(Lcx;Lgo;Lhx;Z)I

    .line 1164
    .line 1165
    .line 1166
    goto :goto_23

    .line 1167
    :cond_3f
    const/4 v6, 0x0

    .line 1168
    :goto_23
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 1169
    .line 1170
    iput-object v6, v1, Lgo;->k:Ljava/util/List;

    .line 1171
    .line 1172
    :cond_40
    :goto_24
    iget-boolean v1, v2, Lhx;->g:Z

    .line 1173
    .line 1174
    if-nez v1, :cond_41

    .line 1175
    .line 1176
    iget-object v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 1177
    .line 1178
    invoke-virtual {v1}, Lqt;->k()I

    .line 1179
    .line 1180
    .line 1181
    move-result v2

    .line 1182
    iput v2, v1, Lqt;->b:I

    .line 1183
    .line 1184
    goto :goto_25

    .line 1185
    :cond_41
    invoke-virtual {v9}, Leo;->c()V

    .line 1186
    .line 1187
    .line 1188
    :goto_25
    iget-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 1189
    .line 1190
    iput-boolean v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    .line 1191
    .line 1192
    return-void
.end method

.method public final b1(IIZLhx;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 4
    .line 5
    invoke-virtual {v1}, Lqt;->i()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 14
    .line 15
    invoke-virtual {v1}, Lqt;->f()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    move v1, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, v2

    .line 24
    :goto_0
    iput-boolean v1, v0, Lgo;->l:Z

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 27
    .line 28
    iput p1, v0, Lgo;->f:I

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:[I

    .line 31
    .line 32
    aput v2, v0, v2

    .line 33
    .line 34
    aput v2, v0, v3

    .line 35
    .line 36
    invoke-virtual {p0, p4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->A0(Lhx;[I)V

    .line 37
    .line 38
    .line 39
    aget p4, v0, v2

    .line 40
    .line 41
    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result p4

    .line 45
    aget v0, v0, v3

    .line 46
    .line 47
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-ne p1, v3, :cond_1

    .line 52
    .line 53
    move v2, v3

    .line 54
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    move v1, v0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move v1, p4

    .line 61
    :goto_1
    iput v1, p1, Lgo;->h:I

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    move p4, v0

    .line 67
    :goto_2
    iput p4, p1, Lgo;->i:I

    .line 68
    .line 69
    const/4 p4, -0x1

    .line 70
    if-eqz v2, :cond_5

    .line 71
    .line 72
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 73
    .line 74
    invoke-virtual {v0}, Lqt;->h()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    add-int/2addr v0, v1

    .line 79
    iput v0, p1, Lgo;->h:I

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q0()Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 86
    .line 87
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    move v3, p4

    .line 92
    :cond_4
    iput v3, v0, Lgo;->e:I

    .line 93
    .line 94
    invoke-static {p1}, Lww;->H(Landroid/view/View;)I

    .line 95
    .line 96
    .line 97
    move-result p4

    .line 98
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 99
    .line 100
    iget v2, v1, Lgo;->e:I

    .line 101
    .line 102
    add-int/2addr p4, v2

    .line 103
    iput p4, v0, Lgo;->d:I

    .line 104
    .line 105
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 106
    .line 107
    invoke-virtual {p4, p1}, Lqt;->b(Landroid/view/View;)I

    .line 108
    .line 109
    .line 110
    move-result p4

    .line 111
    iput p4, v1, Lgo;->b:I

    .line 112
    .line 113
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 114
    .line 115
    invoke-virtual {p4, p1}, Lqt;->b(Landroid/view/View;)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 120
    .line 121
    invoke-virtual {p4}, Lqt;->g()I

    .line 122
    .line 123
    .line 124
    move-result p4

    .line 125
    sub-int/2addr p1, p4

    .line 126
    goto :goto_4

    .line 127
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0()Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 132
    .line 133
    iget v1, v0, Lgo;->h:I

    .line 134
    .line 135
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 136
    .line 137
    invoke-virtual {v2}, Lqt;->j()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    add-int/2addr v2, v1

    .line 142
    iput v2, v0, Lgo;->h:I

    .line 143
    .line 144
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 145
    .line 146
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 147
    .line 148
    if-eqz v1, :cond_6

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_6
    move v3, p4

    .line 152
    :goto_3
    iput v3, v0, Lgo;->e:I

    .line 153
    .line 154
    invoke-static {p1}, Lww;->H(Landroid/view/View;)I

    .line 155
    .line 156
    .line 157
    move-result p4

    .line 158
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 159
    .line 160
    iget v2, v1, Lgo;->e:I

    .line 161
    .line 162
    add-int/2addr p4, v2

    .line 163
    iput p4, v0, Lgo;->d:I

    .line 164
    .line 165
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 166
    .line 167
    invoke-virtual {p4, p1}, Lqt;->e(Landroid/view/View;)I

    .line 168
    .line 169
    .line 170
    move-result p4

    .line 171
    iput p4, v1, Lgo;->b:I

    .line 172
    .line 173
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 174
    .line 175
    invoke-virtual {p4, p1}, Lqt;->e(Landroid/view/View;)I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    neg-int p1, p1

    .line 180
    iget-object p4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 181
    .line 182
    invoke-virtual {p4}, Lqt;->j()I

    .line 183
    .line 184
    .line 185
    move-result p4

    .line 186
    add-int/2addr p1, p4

    .line 187
    :goto_4
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 188
    .line 189
    iput p2, p0, Lgo;->c:I

    .line 190
    .line 191
    if-eqz p3, :cond_7

    .line 192
    .line 193
    sub-int/2addr p2, p1

    .line 194
    iput p2, p0, Lgo;->c:I

    .line 195
    .line 196
    :cond_7
    iput p1, p0, Lgo;->g:I

    .line 197
    .line 198
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lho;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lww;->c(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public c0(Lhx;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lho;

    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 6
    .line 7
    const/high16 p1, -0x80000000

    .line 8
    .line 9
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Leo;

    .line 12
    .line 13
    invoke-virtual {p0}, Leo;->c()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final c1(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 4
    .line 5
    invoke-virtual {v1}, Lqt;->g()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v1, p2

    .line 10
    iput v1, v0, Lgo;->c:I

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 13
    .line 14
    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, -0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p0, v1

    .line 22
    :goto_0
    iput p0, v0, Lgo;->e:I

    .line 23
    .line 24
    iput p1, v0, Lgo;->d:I

    .line 25
    .line 26
    iput v1, v0, Lgo;->f:I

    .line 27
    .line 28
    iput p2, v0, Lgo;->b:I

    .line 29
    .line 30
    const/high16 p0, -0x80000000

    .line 31
    .line 32
    iput p0, v0, Lgo;->g:I

    .line 33
    .line 34
    return-void
.end method

.method public final d()Z
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final d0(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lho;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lho;

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lho;

    .line 8
    .line 9
    invoke-virtual {p0}, Lww;->l0()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final d1(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 4
    .line 5
    invoke-virtual {v1}, Lqt;->j()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int v1, p2, v1

    .line 10
    .line 11
    iput v1, v0, Lgo;->c:I

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 14
    .line 15
    iput p1, v0, Lgo;->d:I

    .line 16
    .line 17
    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 18
    .line 19
    const/4 p1, -0x1

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p0, p1

    .line 25
    :goto_0
    iput p0, v0, Lgo;->e:I

    .line 26
    .line 27
    iput p1, v0, Lgo;->f:I

    .line 28
    .line 29
    iput p2, v0, Lgo;->b:I

    .line 30
    .line 31
    const/high16 p0, -0x80000000

    .line 32
    .line 33
    iput p0, v0, Lgo;->g:I

    .line 34
    .line 35
    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final e0()Landroid/os/Parcelable;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lho;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance p0, Lho;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v1, v0, Lho;->a:I

    .line 11
    .line 12
    iput v1, p0, Lho;->a:I

    .line 13
    .line 14
    iget v1, v0, Lho;->b:I

    .line 15
    .line 16
    iput v1, p0, Lho;->b:I

    .line 17
    .line 18
    iget-boolean v0, v0, Lho;->c:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lho;->c:Z

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance v0, Lho;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lww;->v()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-lez v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0()V

    .line 35
    .line 36
    .line 37
    iget-boolean v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    .line 38
    .line 39
    iget-boolean v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 40
    .line 41
    xor-int/2addr v1, v2

    .line 42
    iput-boolean v1, v0, Lho;->c:Z

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q0()Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 51
    .line 52
    invoke-virtual {v2}, Lqt;->g()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lqt;->b(Landroid/view/View;)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    sub-int/2addr v2, p0

    .line 63
    iput v2, v0, Lho;->b:I

    .line 64
    .line 65
    invoke-static {v1}, Lww;->H(Landroid/view/View;)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    iput p0, v0, Lho;->a:I

    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->R0()Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v1}, Lww;->H(Landroid/view/View;)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    iput v2, v0, Lho;->a:I

    .line 81
    .line 82
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 83
    .line 84
    invoke-virtual {v2, v1}, Lqt;->e(Landroid/view/View;)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Lqt;

    .line 89
    .line 90
    invoke-virtual {p0}, Lqt;->j()I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    sub-int/2addr v1, p0

    .line 95
    iput v1, v0, Lho;->b:I

    .line 96
    .line 97
    return-object v0

    .line 98
    :cond_2
    const/4 p0, -0x1

    .line 99
    iput p0, v0, Lho;->a:I

    .line 100
    .line 101
    return-object v0
.end method

.method public final h(IILhx;Lcl;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move p1, p2

    .line 7
    :goto_0
    invoke-virtual {p0}, Lww;->v()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_3

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->G0()V

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    if-lez p1, :cond_2

    .line 21
    .line 22
    move v0, p2

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    const/4 v0, -0x1

    .line 25
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b1(IIZLhx;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->q:Lgo;

    .line 33
    .line 34
    invoke-virtual {p0, p3, p1, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->B0(Lhx;Lgo;Lcl;)V

    .line 35
    .line 36
    .line 37
    :cond_3
    :goto_2
    return-void
.end method

.method public final i(ILcl;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lho;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v3, v0, Lho;->a:I

    .line 8
    .line 9
    if-ltz v3, :cond_0

    .line 10
    .line 11
    iget-boolean v0, v0, Lho;->c:Z

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->X0()V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    .line 18
    .line 19
    iget v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 20
    .line 21
    if-ne v3, v1, :cond_2

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    add-int/lit8 v3, p1, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v3, v2

    .line 29
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    const/4 v1, 0x1

    .line 33
    :goto_1
    move v0, v2

    .line 34
    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->C:I

    .line 35
    .line 36
    if-ge v0, v4, :cond_4

    .line 37
    .line 38
    if-ltz v3, :cond_4

    .line 39
    .line 40
    if-ge v3, p1, :cond_4

    .line 41
    .line 42
    invoke-virtual {p2, v3, v2}, Lcl;->a(II)V

    .line 43
    .line 44
    .line 45
    add-int/2addr v3, v1

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_4
    return-void
.end method

.method public final j(Lhx;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(Lhx;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public k(Lhx;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->D0(Lhx;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public l(Lhx;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->E0(Lhx;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final m(Lhx;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->C0(Lhx;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public m0(ILcx;Lhx;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0(ILcx;Lhx;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public n(Lhx;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->D0(Lhx;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final n0(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:I

    .line 2
    .line 3
    const/high16 p1, -0x80000000

    .line 4
    .line 5
    iput p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->y:I

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lho;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p1, Lho;->a:I

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lww;->l0()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public o(Lhx;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->E0(Lhx;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public o0(ILcx;Lhx;)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0(ILcx;Lhx;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final q(I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lww;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1}, Lww;->u(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lww;->H(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-int v1, p1, v1

    .line 19
    .line 20
    if-ltz v1, :cond_1

    .line 21
    .line 22
    if-ge v1, v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lww;->u(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lww;->H(Landroid/view/View;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v1, p1, :cond_1

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    invoke-super {p0, p1}, Lww;->q(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public r()Lxw;
    .locals 1

    .line 1
    new-instance p0, Lxw;

    .line 2
    .line 3
    const/4 v0, -0x2

    .line 4
    invoke-direct {p0, v0, v0}, Lxw;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public final v0()Z
    .locals 5

    .line 1
    iget v0, p0, Lww;->m:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x40000000    # 2.0f

    .line 5
    .line 6
    if-eq v0, v2, :cond_1

    .line 7
    .line 8
    iget v0, p0, Lww;->l:I

    .line 9
    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lww;->v()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    if-ge v2, v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lww;->u(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 28
    .line 29
    if-gez v4, :cond_0

    .line 30
    .line 31
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 32
    .line 33
    if-gez v3, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return v1
.end method

.method public x0(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    new-instance v0, Ljo;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljo;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput p2, v0, Ljo;->a:I

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lww;->y0(Ljo;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public z0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Lho;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:Z

    .line 6
    .line 7
    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->v:Z

    .line 8
    .line 9
    if-ne v0, p0, :cond_0

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
