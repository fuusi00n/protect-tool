.class public final Luh;
.super Ls30;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# static fields
.field public static final B:[Ljava/lang/String;


# instance fields
.field public final A:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "android:visibility:visibility"

    .line 2
    .line 3
    const-string v1, "android:visibility:parent"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Luh;->B:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls30;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Luh;->A:I

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Luh;-><init>()V

    .line 9
    iput p1, p0, Luh;->A:I

    return-void
.end method

.method public static I(La40;)V
    .locals 3

    .line 1
    iget-object v0, p0, La40;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object p0, p0, La40;->a:Ljava/util/HashMap;

    .line 8
    .line 9
    const-string v2, "android:visibility:visibility"

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-string v1, "android:visibility:parent"

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    new-array v1, v1, [I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 31
    .line 32
    .line 33
    const-string v0, "android:visibility:screenLocation"

    .line 34
    .line 35
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static K(La40;F)F
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, La40;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    const-string v0, "android:fade:transitionAlpha"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Float;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    return p1
.end method

.method public static L(La40;La40;)Lf70;
    .locals 8

    .line 1
    new-instance v0, Lf70;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lf70;->a:Z

    .line 8
    .line 9
    iput-boolean v1, v0, Lf70;->b:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, -0x1

    .line 13
    const-string v4, "android:visibility:parent"

    .line 14
    .line 15
    const-string v5, "android:visibility:visibility"

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-object v6, p0, La40;->a:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    check-cast v7, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    iput v7, v0, Lf70;->c:I

    .line 38
    .line 39
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Landroid/view/ViewGroup;

    .line 44
    .line 45
    iput-object v6, v0, Lf70;->e:Landroid/view/ViewGroup;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iput v3, v0, Lf70;->c:I

    .line 49
    .line 50
    iput-object v2, v0, Lf70;->e:Landroid/view/ViewGroup;

    .line 51
    .line 52
    :goto_0
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object v6, p1, La40;->a:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_1

    .line 61
    .line 62
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iput v2, v0, Lf70;->d:I

    .line 73
    .line 74
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Landroid/view/ViewGroup;

    .line 79
    .line 80
    iput-object v2, v0, Lf70;->f:Landroid/view/ViewGroup;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    iput v3, v0, Lf70;->d:I

    .line 84
    .line 85
    iput-object v2, v0, Lf70;->f:Landroid/view/ViewGroup;

    .line 86
    .line 87
    :goto_1
    const/4 v2, 0x1

    .line 88
    if-eqz p0, :cond_6

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    iget p0, v0, Lf70;->c:I

    .line 93
    .line 94
    iget p1, v0, Lf70;->d:I

    .line 95
    .line 96
    if-ne p0, p1, :cond_2

    .line 97
    .line 98
    iget-object v3, v0, Lf70;->e:Landroid/view/ViewGroup;

    .line 99
    .line 100
    iget-object v4, v0, Lf70;->f:Landroid/view/ViewGroup;

    .line 101
    .line 102
    if-ne v3, v4, :cond_2

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    if-eq p0, p1, :cond_4

    .line 106
    .line 107
    if-nez p0, :cond_3

    .line 108
    .line 109
    iput-boolean v1, v0, Lf70;->b:Z

    .line 110
    .line 111
    iput-boolean v2, v0, Lf70;->a:Z

    .line 112
    .line 113
    return-object v0

    .line 114
    :cond_3
    if-nez p1, :cond_8

    .line 115
    .line 116
    iput-boolean v2, v0, Lf70;->b:Z

    .line 117
    .line 118
    iput-boolean v2, v0, Lf70;->a:Z

    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_4
    iget-object p0, v0, Lf70;->f:Landroid/view/ViewGroup;

    .line 122
    .line 123
    if-nez p0, :cond_5

    .line 124
    .line 125
    iput-boolean v1, v0, Lf70;->b:Z

    .line 126
    .line 127
    iput-boolean v2, v0, Lf70;->a:Z

    .line 128
    .line 129
    return-object v0

    .line 130
    :cond_5
    iget-object p0, v0, Lf70;->e:Landroid/view/ViewGroup;

    .line 131
    .line 132
    if-nez p0, :cond_8

    .line 133
    .line 134
    iput-boolean v2, v0, Lf70;->b:Z

    .line 135
    .line 136
    iput-boolean v2, v0, Lf70;->a:Z

    .line 137
    .line 138
    return-object v0

    .line 139
    :cond_6
    if-nez p0, :cond_7

    .line 140
    .line 141
    iget p0, v0, Lf70;->d:I

    .line 142
    .line 143
    if-nez p0, :cond_7

    .line 144
    .line 145
    iput-boolean v2, v0, Lf70;->b:Z

    .line 146
    .line 147
    iput-boolean v2, v0, Lf70;->a:Z

    .line 148
    .line 149
    return-object v0

    .line 150
    :cond_7
    if-nez p1, :cond_8

    .line 151
    .line 152
    iget p0, v0, Lf70;->c:I

    .line 153
    .line 154
    if-nez p0, :cond_8

    .line 155
    .line 156
    iput-boolean v1, v0, Lf70;->b:Z

    .line 157
    .line 158
    iput-boolean v2, v0, Lf70;->a:Z

    .line 159
    .line 160
    :cond_8
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final J(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 2

    .line 1
    cmpl-float v0, p2, p3

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    sget-object v0, Lt60;->a:Lz60;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lzt;->s(Landroid/view/View;F)V

    .line 10
    .line 11
    .line 12
    sget-object p2, Lt60;->b:Lu8;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [F

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    aput p3, v0, v1

    .line 19
    .line 20
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    new-instance p3, Lth;

    .line 25
    .line 26
    invoke-direct {p3, p1}, Lth;-><init>(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ls30;->o()Ls30;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, p3}, Ls30;->a(Lr30;)V

    .line 37
    .line 38
    .line 39
    return-object p2
.end method

.method public final d(La40;)V
    .locals 0

    .line 1
    invoke-static {p1}, Luh;->I(La40;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final g(La40;)V
    .locals 1

    .line 1
    invoke-static {p1}, Luh;->I(La40;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p1, La40;->b:Landroid/view/View;

    .line 5
    .line 6
    sget v0, Lmv;->transition_pause_alpha:I

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Float;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    sget-object v0, Lt60;->a:Lz60;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lzt;->n(Landroid/view/View;)F

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_1
    :goto_0
    iget-object p0, p1, La40;->a:Ljava/util/HashMap;

    .line 39
    .line 40
    const-string p1, "android:fade:transitionAlpha"

    .line 41
    .line 42
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final k(Landroid/view/ViewGroup;La40;La40;)Landroid/animation/Animator;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-static/range {p2 .. p3}, Luh;->L(La40;La40;)Lf70;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget-boolean v5, v4, Lf70;->a:Z

    .line 14
    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    iget-object v5, v4, Lf70;->e:Landroid/view/ViewGroup;

    .line 18
    .line 19
    if-nez v5, :cond_1

    .line 20
    .line 21
    iget-object v5, v4, Lf70;->f:Landroid/view/ViewGroup;

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    const/16 v16, 0x0

    .line 27
    .line 28
    goto/16 :goto_e

    .line 29
    .line 30
    :cond_1
    :goto_1
    iget-boolean v5, v4, Lf70;->b:Z

    .line 31
    .line 32
    iget v7, v0, Luh;->A:I

    .line 33
    .line 34
    const/high16 v8, 0x3f800000    # 1.0f

    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    const/4 v10, 0x1

    .line 38
    const/4 v11, 0x0

    .line 39
    if-eqz v5, :cond_4

    .line 40
    .line 41
    and-int/lit8 v1, v7, 0x1

    .line 42
    .line 43
    if-ne v1, v10, :cond_0

    .line 44
    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object v1, v3, La40;->b:Landroid/view/View;

    .line 49
    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v0, v3, v11}, Ls30;->n(Landroid/view/View;Z)La40;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v0, v3, v11}, Ls30;->r(Landroid/view/View;Z)La40;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v4, v3}, Luh;->L(La40;La40;)Lf70;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    iget-boolean v3, v3, Lf70;->a:Z

    .line 71
    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    sget-object v3, Lt60;->a:Lz60;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v9}, Luh;->K(La40;F)F

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-virtual {v0, v1, v2, v8}, Luh;->J(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    return-object v0

    .line 89
    :cond_4
    iget v4, v4, Lf70;->d:I

    .line 90
    .line 91
    const/4 v5, 0x2

    .line 92
    and-int/2addr v7, v5

    .line 93
    if-eq v7, v5, :cond_5

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    if-nez v2, :cond_6

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_6
    iget-object v7, v2, La40;->b:Landroid/view/View;

    .line 100
    .line 101
    if-eqz v3, :cond_7

    .line 102
    .line 103
    iget-object v12, v3, La40;->b:Landroid/view/View;

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_7
    const/4 v12, 0x0

    .line 107
    :goto_2
    sget v13, Lmv;->save_overlay_view:I

    .line 108
    .line 109
    invoke-virtual {v7, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    check-cast v13, Landroid/view/View;

    .line 114
    .line 115
    if-eqz v13, :cond_8

    .line 116
    .line 117
    move/from16 v22, v4

    .line 118
    .line 119
    move/from16 v17, v10

    .line 120
    .line 121
    move/from16 v18, v11

    .line 122
    .line 123
    const/4 v6, 0x0

    .line 124
    const/16 v16, 0x0

    .line 125
    .line 126
    goto/16 :goto_d

    .line 127
    .line 128
    :cond_8
    if-eqz v12, :cond_c

    .line 129
    .line 130
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 131
    .line 132
    .line 133
    move-result-object v13

    .line 134
    if-nez v13, :cond_9

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_9
    const/4 v13, 0x4

    .line 138
    if-ne v4, v13, :cond_a

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_a
    if-ne v7, v12, :cond_b

    .line 142
    .line 143
    :goto_3
    move v14, v11

    .line 144
    move-object v13, v12

    .line 145
    const/4 v12, 0x0

    .line 146
    goto :goto_6

    .line 147
    :cond_b
    move v14, v10

    .line 148
    const/4 v12, 0x0

    .line 149
    :goto_4
    const/4 v13, 0x0

    .line 150
    goto :goto_6

    .line 151
    :cond_c
    :goto_5
    if-eqz v12, :cond_b

    .line 152
    .line 153
    move v14, v11

    .line 154
    goto :goto_4

    .line 155
    :goto_6
    if-eqz v14, :cond_16

    .line 156
    .line 157
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 158
    .line 159
    .line 160
    move-result-object v14

    .line 161
    if-nez v14, :cond_d

    .line 162
    .line 163
    move/from16 v22, v4

    .line 164
    .line 165
    move/from16 v17, v10

    .line 166
    .line 167
    move v10, v11

    .line 168
    move/from16 v18, v10

    .line 169
    .line 170
    move-object v6, v13

    .line 171
    const/16 v16, 0x0

    .line 172
    .line 173
    move-object v13, v7

    .line 174
    goto/16 :goto_d

    .line 175
    .line 176
    :cond_d
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    instance-of v14, v14, Landroid/view/View;

    .line 181
    .line 182
    if-eqz v14, :cond_16

    .line 183
    .line 184
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 185
    .line 186
    .line 187
    move-result-object v14

    .line 188
    check-cast v14, Landroid/view/View;

    .line 189
    .line 190
    invoke-virtual {v0, v14, v10}, Ls30;->r(Landroid/view/View;Z)La40;

    .line 191
    .line 192
    .line 193
    move-result-object v15

    .line 194
    const/16 v16, 0x0

    .line 195
    .line 196
    invoke-virtual {v0, v14, v10}, Ls30;->n(Landroid/view/View;Z)La40;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    invoke-static {v15, v6}, Luh;->L(La40;La40;)Lf70;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    iget-boolean v6, v6, Lf70;->a:Z

    .line 205
    .line 206
    if-nez v6, :cond_15

    .line 207
    .line 208
    sget-boolean v6, Lz30;->a:Z

    .line 209
    .line 210
    new-instance v6, Landroid/graphics/Matrix;

    .line 211
    .line 212
    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v14}, Landroid/view/View;->getScrollX()I

    .line 216
    .line 217
    .line 218
    move-result v12

    .line 219
    neg-int v12, v12

    .line 220
    int-to-float v12, v12

    .line 221
    invoke-virtual {v14}, Landroid/view/View;->getScrollY()I

    .line 222
    .line 223
    .line 224
    move-result v14

    .line 225
    neg-int v14, v14

    .line 226
    int-to-float v14, v14

    .line 227
    invoke-virtual {v6, v12, v14}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 228
    .line 229
    .line 230
    sget-object v12, Lt60;->a:Lz60;

    .line 231
    .line 232
    invoke-virtual {v12, v7, v6}, Lz60;->A(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v12, v1, v6}, Lz60;->B(Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    .line 236
    .line 237
    .line 238
    new-instance v12, Landroid/graphics/RectF;

    .line 239
    .line 240
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 241
    .line 242
    .line 243
    move-result v14

    .line 244
    int-to-float v14, v14

    .line 245
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 246
    .line 247
    .line 248
    move-result v15

    .line 249
    int-to-float v15, v15

    .line 250
    invoke-direct {v12, v9, v9, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v6, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 254
    .line 255
    .line 256
    iget v14, v12, Landroid/graphics/RectF;->left:F

    .line 257
    .line 258
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    .line 259
    .line 260
    .line 261
    move-result v14

    .line 262
    iget v15, v12, Landroid/graphics/RectF;->top:F

    .line 263
    .line 264
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    .line 265
    .line 266
    .line 267
    move-result v15

    .line 268
    move/from16 v17, v10

    .line 269
    .line 270
    iget v10, v12, Landroid/graphics/RectF;->right:F

    .line 271
    .line 272
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 273
    .line 274
    .line 275
    move-result v10

    .line 276
    move/from16 v18, v11

    .line 277
    .line 278
    iget v11, v12, Landroid/graphics/RectF;->bottom:F

    .line 279
    .line 280
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 281
    .line 282
    .line 283
    move-result v11

    .line 284
    new-instance v9, Landroid/widget/ImageView;

    .line 285
    .line 286
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    invoke-direct {v9, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 291
    .line 292
    .line 293
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 294
    .line 295
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v7}, Landroid/view/View;->isAttachedToWindow()Z

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    if-eqz v1, :cond_e

    .line 303
    .line 304
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 305
    .line 306
    .line 307
    move-result v19

    .line 308
    if-eqz v19, :cond_e

    .line 309
    .line 310
    move/from16 v19, v17

    .line 311
    .line 312
    goto :goto_7

    .line 313
    :cond_e
    move/from16 v19, v18

    .line 314
    .line 315
    :goto_7
    if-nez v5, :cond_10

    .line 316
    .line 317
    if-nez v19, :cond_f

    .line 318
    .line 319
    move/from16 v22, v4

    .line 320
    .line 321
    move-object/from16 v21, v13

    .line 322
    .line 323
    move-object/from16 v0, v16

    .line 324
    .line 325
    goto/16 :goto_a

    .line 326
    .line 327
    :cond_f
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 328
    .line 329
    .line 330
    move-result-object v19

    .line 331
    move-object/from16 v8, v19

    .line 332
    .line 333
    check-cast v8, Landroid/view/ViewGroup;

    .line 334
    .line 335
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 336
    .line 337
    .line 338
    move-result v19

    .line 339
    move/from16 v20, v5

    .line 340
    .line 341
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-virtual {v5, v7}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 346
    .line 347
    .line 348
    move/from16 v5, v19

    .line 349
    .line 350
    goto :goto_8

    .line 351
    :cond_10
    move/from16 v20, v5

    .line 352
    .line 353
    move-object/from16 v8, v16

    .line 354
    .line 355
    move/from16 v5, v18

    .line 356
    .line 357
    :goto_8
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    .line 358
    .line 359
    .line 360
    move-result v19

    .line 361
    move-object/from16 v21, v13

    .line 362
    .line 363
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    .line 364
    .line 365
    .line 366
    move-result v13

    .line 367
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    .line 368
    .line 369
    .line 370
    move-result v19

    .line 371
    move/from16 v22, v4

    .line 372
    .line 373
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    if-lez v13, :cond_12

    .line 378
    .line 379
    if-lez v4, :cond_12

    .line 380
    .line 381
    mul-int v3, v13, v4

    .line 382
    .line 383
    int-to-float v3, v3

    .line 384
    const/high16 v19, 0x49800000    # 1048576.0f

    .line 385
    .line 386
    div-float v3, v19, v3

    .line 387
    .line 388
    const/high16 v0, 0x3f800000    # 1.0f

    .line 389
    .line 390
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    int-to-float v0, v13

    .line 395
    mul-float/2addr v0, v3

    .line 396
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    int-to-float v4, v4

    .line 401
    mul-float/2addr v4, v3

    .line 402
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    iget v13, v12, Landroid/graphics/RectF;->left:F

    .line 407
    .line 408
    neg-float v13, v13

    .line 409
    iget v12, v12, Landroid/graphics/RectF;->top:F

    .line 410
    .line 411
    neg-float v12, v12

    .line 412
    invoke-virtual {v6, v13, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 413
    .line 414
    .line 415
    invoke-virtual {v6, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 416
    .line 417
    .line 418
    sget-boolean v3, Lz30;->a:Z

    .line 419
    .line 420
    if-eqz v3, :cond_11

    .line 421
    .line 422
    new-instance v3, Landroid/graphics/Picture;

    .line 423
    .line 424
    invoke-direct {v3}, Landroid/graphics/Picture;-><init>()V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v3, v0, v4}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v7, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v3}, Landroid/graphics/Picture;->endRecording()V

    .line 438
    .line 439
    .line 440
    invoke-static {v3}, Ly30;->a(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    goto :goto_9

    .line 445
    :cond_11
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 446
    .line 447
    invoke-static {v0, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    new-instance v3, Landroid/graphics/Canvas;

    .line 452
    .line 453
    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v3, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v7, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 460
    .line 461
    .line 462
    goto :goto_9

    .line 463
    :cond_12
    move-object/from16 v0, v16

    .line 464
    .line 465
    :goto_9
    if-nez v20, :cond_13

    .line 466
    .line 467
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    invoke-virtual {v3, v7}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v8, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 475
    .line 476
    .line 477
    :cond_13
    :goto_a
    if-eqz v0, :cond_14

    .line 478
    .line 479
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 480
    .line 481
    .line 482
    :cond_14
    sub-int v0, v10, v14

    .line 483
    .line 484
    const/high16 v3, 0x40000000    # 2.0f

    .line 485
    .line 486
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    sub-int v4, v11, v15

    .line 491
    .line 492
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    invoke-virtual {v9, v0, v3}, Landroid/view/View;->measure(II)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v9, v14, v15, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 500
    .line 501
    .line 502
    move-object v13, v9

    .line 503
    :goto_b
    move/from16 v10, v18

    .line 504
    .line 505
    move-object/from16 v6, v21

    .line 506
    .line 507
    goto :goto_d

    .line 508
    :cond_15
    move/from16 v22, v4

    .line 509
    .line 510
    move/from16 v17, v10

    .line 511
    .line 512
    move/from16 v18, v11

    .line 513
    .line 514
    move-object/from16 v21, v13

    .line 515
    .line 516
    invoke-virtual {v14}, Landroid/view/View;->getId()I

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    if-nez v3, :cond_17

    .line 525
    .line 526
    const/4 v3, -0x1

    .line 527
    if-eq v0, v3, :cond_17

    .line 528
    .line 529
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 530
    .line 531
    .line 532
    goto :goto_c

    .line 533
    :cond_16
    move/from16 v22, v4

    .line 534
    .line 535
    move/from16 v17, v10

    .line 536
    .line 537
    move/from16 v18, v11

    .line 538
    .line 539
    move-object/from16 v21, v13

    .line 540
    .line 541
    const/16 v16, 0x0

    .line 542
    .line 543
    :cond_17
    :goto_c
    move-object v13, v12

    .line 544
    goto :goto_b

    .line 545
    :goto_d
    if-eqz v13, :cond_1c

    .line 546
    .line 547
    if-nez v10, :cond_18

    .line 548
    .line 549
    iget-object v0, v2, La40;->a:Ljava/util/HashMap;

    .line 550
    .line 551
    const-string v3, "android:visibility:screenLocation"

    .line 552
    .line 553
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    check-cast v0, [I

    .line 558
    .line 559
    aget v3, v0, v18

    .line 560
    .line 561
    aget v0, v0, v17

    .line 562
    .line 563
    const/4 v4, 0x2

    .line 564
    new-array v4, v4, [I

    .line 565
    .line 566
    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 567
    .line 568
    .line 569
    aget v5, v4, v18

    .line 570
    .line 571
    sub-int/2addr v3, v5

    .line 572
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    .line 573
    .line 574
    .line 575
    move-result v5

    .line 576
    sub-int/2addr v3, v5

    .line 577
    invoke-virtual {v13, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 578
    .line 579
    .line 580
    aget v3, v4, v17

    .line 581
    .line 582
    sub-int/2addr v0, v3

    .line 583
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    .line 584
    .line 585
    .line 586
    move-result v3

    .line 587
    sub-int/2addr v0, v3

    .line 588
    invoke-virtual {v13, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    invoke-virtual {v0, v13}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 596
    .line 597
    .line 598
    :cond_18
    sget-object v0, Lt60;->a:Lz60;

    .line 599
    .line 600
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    .line 602
    .line 603
    const/high16 v3, 0x3f800000    # 1.0f

    .line 604
    .line 605
    invoke-static {v2, v3}, Luh;->K(La40;F)F

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    const/4 v5, 0x0

    .line 610
    move-object/from16 v4, p0

    .line 611
    .line 612
    invoke-virtual {v4, v13, v2, v5}, Luh;->J(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    if-nez v2, :cond_19

    .line 617
    .line 618
    move-object/from16 v5, p3

    .line 619
    .line 620
    invoke-static {v5, v3}, Luh;->K(La40;F)F

    .line 621
    .line 622
    .line 623
    move-result v3

    .line 624
    invoke-virtual {v0, v13, v3}, Lzt;->s(Landroid/view/View;F)V

    .line 625
    .line 626
    .line 627
    :cond_19
    if-nez v10, :cond_1b

    .line 628
    .line 629
    if-nez v2, :cond_1a

    .line 630
    .line 631
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-virtual {v0, v13}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 636
    .line 637
    .line 638
    return-object v2

    .line 639
    :cond_1a
    sget v0, Lmv;->save_overlay_view:I

    .line 640
    .line 641
    invoke-virtual {v7, v0, v13}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 642
    .line 643
    .line 644
    new-instance v0, Le70;

    .line 645
    .line 646
    invoke-direct {v0, v4, v1, v13, v7}, Le70;-><init>(Luh;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v4}, Ls30;->o()Ls30;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    invoke-virtual {v1, v0}, Ls30;->a(Lr30;)V

    .line 660
    .line 661
    .line 662
    :cond_1b
    return-object v2

    .line 663
    :cond_1c
    move-object/from16 v4, p0

    .line 664
    .line 665
    move-object/from16 v5, p3

    .line 666
    .line 667
    if-eqz v6, :cond_1f

    .line 668
    .line 669
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 670
    .line 671
    .line 672
    move-result v0

    .line 673
    move/from16 v1, v18

    .line 674
    .line 675
    invoke-static {v6, v1}, Lt60;->b(Landroid/view/View;I)V

    .line 676
    .line 677
    .line 678
    sget-object v1, Lt60;->a:Lz60;

    .line 679
    .line 680
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 681
    .line 682
    .line 683
    const/high16 v3, 0x3f800000    # 1.0f

    .line 684
    .line 685
    invoke-static {v2, v3}, Luh;->K(La40;F)F

    .line 686
    .line 687
    .line 688
    move-result v2

    .line 689
    const/4 v7, 0x0

    .line 690
    invoke-virtual {v4, v6, v2, v7}, Luh;->J(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    if-nez v2, :cond_1d

    .line 695
    .line 696
    invoke-static {v5, v3}, Luh;->K(La40;F)F

    .line 697
    .line 698
    .line 699
    move-result v3

    .line 700
    invoke-virtual {v1, v6, v3}, Lzt;->s(Landroid/view/View;F)V

    .line 701
    .line 702
    .line 703
    :cond_1d
    if-eqz v2, :cond_1e

    .line 704
    .line 705
    new-instance v0, Ld70;

    .line 706
    .line 707
    move/from16 v1, v22

    .line 708
    .line 709
    invoke-direct {v0, v6, v1}, Ld70;-><init>(Landroid/view/View;I)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v4}, Ls30;->o()Ls30;

    .line 716
    .line 717
    .line 718
    move-result-object v1

    .line 719
    invoke-virtual {v1, v0}, Ls30;->a(Lr30;)V

    .line 720
    .line 721
    .line 722
    return-object v2

    .line 723
    :cond_1e
    invoke-static {v6, v0}, Lt60;->b(Landroid/view/View;I)V

    .line 724
    .line 725
    .line 726
    return-object v2

    .line 727
    :cond_1f
    :goto_e
    return-object v16
.end method

.method public final q()[Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Luh;->B:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final s(La40;La40;)Z
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    iget-object p0, p2, La40;->a:Ljava/util/HashMap;

    .line 11
    .line 12
    const-string v0, "android:visibility:visibility"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    iget-object v1, p1, La40;->a:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eq p0, v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p1, p2}, Luh;->L(La40;La40;)Lf70;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-boolean p1, p0, Lf70;->a:Z

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    iget p1, p0, Lf70;->c:I

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget p0, p0, Lf70;->d:I

    .line 40
    .line 41
    if-nez p0, :cond_3

    .line 42
    .line 43
    :cond_2
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 46
    return p0
.end method
