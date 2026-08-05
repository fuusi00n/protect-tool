.class public final Lpq;
.super Lau;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lau;"
    }
.end annotation

.field public U:I

.field public V:Ly7;

.field public W:Lzr;

.field public X:I

.field public Y:Ls4;

.field public Z:Landroidx/recyclerview/widget/RecyclerView;

.field public a0:Landroidx/recyclerview/widget/RecyclerView;

.field public b0:Landroid/view/View;

.field public c0:Landroid/view/View;

.field public d0:Landroid/view/View;

.field public e0:Landroid/view/View;

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lau;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final E(Lzr;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lpq;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Low;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcs;

    .line 8
    .line 9
    iget-object v1, v0, Lcs;->c:Ly7;

    .line 10
    .line 11
    iget-object v1, v1, Ly7;->a:Lzr;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lzr;->d(Lzr;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lpq;->W:Lzr;

    .line 18
    .line 19
    iget-object v0, v0, Lcs;->c:Ly7;

    .line 20
    .line 21
    iget-object v0, v0, Ly7;->a:Lzr;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lzr;->d(Lzr;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sub-int v0, v1, v0

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    if-le v2, v3, :cond_0

    .line 37
    .line 38
    move v2, v5

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v2, v4

    .line 41
    :goto_0
    if-lez v0, :cond_1

    .line 42
    .line 43
    move v4, v5

    .line 44
    :cond_1
    iput-object p1, p0, Lpq;->W:Lzr;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lpq;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    add-int/lit8 v0, v1, -0x3

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->Y(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lpq;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    new-instance v0, La8;

    .line 60
    .line 61
    invoke-direct {v0, p0, v1, v5}, La8;-><init>(Ljava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    iget-object p1, p0, Lpq;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    add-int/lit8 v0, v1, 0x3

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->Y(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lpq;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    new-instance v0, La8;

    .line 80
    .line 81
    invoke-direct {v0, p0, v1, v5}, La8;-><init>(Ljava/lang/Object;II)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_3
    new-instance v0, La8;

    .line 89
    .line 90
    invoke-direct {v0, p0, v1, v5}, La8;-><init>(Ljava/lang/Object;II)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final F(I)V
    .locals 4

    .line 1
    iput p1, p0, Lpq;->X:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lpq;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lww;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lpq;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Low;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ls80;

    .line 22
    .line 23
    iget-object v3, p0, Lpq;->W:Lzr;

    .line 24
    .line 25
    iget v3, v3, Lzr;->c:I

    .line 26
    .line 27
    iget-object v0, v0, Ls80;->c:Lpq;

    .line 28
    .line 29
    iget-object v0, v0, Lpq;->V:Ly7;

    .line 30
    .line 31
    iget-object v0, v0, Ly7;->a:Lzr;

    .line 32
    .line 33
    iget v0, v0, Lzr;->c:I

    .line 34
    .line 35
    sub-int/2addr v3, v0

    .line 36
    invoke-virtual {p1, v3}, Lww;->n0(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lpq;->d0:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lpq;->e0:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lpq;->b0:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lpq;->c0:Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x1

    .line 61
    if-ne p1, v0, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Lpq;->d0:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lpq;->e0:Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lpq;->b0:Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lpq;->c0:Landroid/view/View;

    .line 79
    .line 80
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lpq;->W:Lzr;

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lpq;->E(Lzr;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method

.method public final q(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Laj;->q(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Laj;->f:Landroid/os/Bundle;

    .line 7
    .line 8
    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lpq;->U:I

    .line 15
    .line 16
    const-string v0, "GRID_SELECTOR_KEY"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ly7;

    .line 31
    .line 32
    iput-object v0, p0, Lpq;->V:Ly7;

    .line 33
    .line 34
    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    const-string v0, "CURRENT_MONTH_KEY"

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lzr;

    .line 49
    .line 50
    iput-object p1, p0, Lpq;->W:Lzr;

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-static {}, Lg9;->a()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    invoke-static {}, Lg9;->a()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final r(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 2
    .line 3
    invoke-virtual {p0}, Laj;->h()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, Lpq;->U:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ls4;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Ls4;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lpq;->Y:Ls4;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v1, p0, Lpq;->V:Ly7;

    .line 24
    .line 25
    iget-object v1, v1, Ly7;->a:Lzr;

    .line 26
    .line 27
    const v2, 0x101020d

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2}, Luq;->H(Landroid/content/Context;I)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    sget v3, Lrv;->mtrl_calendar_vertical:I

    .line 39
    .line 40
    move v6, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget v3, Lrv;->mtrl_calendar_horizontal:I

    .line 43
    .line 44
    move v6, v4

    .line 45
    :goto_0
    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0}, Laj;->A()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    sget v3, Lzu;->mtrl_calendar_navigation_height:I

    .line 58
    .line 59
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    sget v7, Lzu;->mtrl_calendar_navigation_top_padding:I

    .line 64
    .line 65
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    add-int/2addr v7, v3

    .line 70
    sget v3, Lzu;->mtrl_calendar_navigation_bottom_padding:I

    .line 71
    .line 72
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    add-int/2addr v3, v7

    .line 77
    sget v7, Lzu;->mtrl_calendar_days_of_week_height:I

    .line 78
    .line 79
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    sget v8, Las;->d:I

    .line 84
    .line 85
    sget v9, Lzu;->mtrl_calendar_day_height:I

    .line 86
    .line 87
    invoke-virtual {p2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    mul-int/2addr v9, v8

    .line 92
    sub-int/2addr v8, v5

    .line 93
    sget v10, Lzu;->mtrl_calendar_month_vertical_padding:I

    .line 94
    .line 95
    invoke-virtual {p2, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    mul-int/2addr v10, v8

    .line 100
    add-int/2addr v10, v9

    .line 101
    sget v8, Lzu;->mtrl_calendar_bottom_padding:I

    .line 102
    .line 103
    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    add-int/2addr v3, v7

    .line 108
    add-int/2addr v3, v10

    .line 109
    add-int/2addr v3, p2

    .line 110
    invoke-virtual {p1, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 111
    .line 112
    .line 113
    sget p2, Lnv;->mtrl_calendar_days_of_week:I

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    check-cast p2, Landroid/widget/GridView;

    .line 120
    .line 121
    new-instance v3, Llq;

    .line 122
    .line 123
    invoke-direct {v3, v4}, Llq;-><init>(I)V

    .line 124
    .line 125
    .line 126
    invoke-static {p2, v3}, Lw50;->l(Landroid/view/View;La0;)V

    .line 127
    .line 128
    .line 129
    iget-object v3, p0, Lpq;->V:Ly7;

    .line 130
    .line 131
    iget v3, v3, Ly7;->e:I

    .line 132
    .line 133
    new-instance v7, Ltd;

    .line 134
    .line 135
    if-lez v3, :cond_1

    .line 136
    .line 137
    invoke-direct {v7, v3}, Ltd;-><init>(I)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_1
    invoke-direct {v7}, Ltd;-><init>()V

    .line 142
    .line 143
    .line 144
    :goto_1
    invoke-virtual {p2, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    .line 146
    .line 147
    iget v1, v1, Lzr;->d:I

    .line 148
    .line 149
    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 153
    .line 154
    .line 155
    sget p2, Lnv;->mtrl_calendar_months:I

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 162
    .line 163
    iput-object p2, p0, Lpq;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 164
    .line 165
    new-instance p2, Lmq;

    .line 166
    .line 167
    invoke-direct {p2, p0, v6, v6}, Lmq;-><init>(Lpq;II)V

    .line 168
    .line 169
    .line 170
    iget-object v1, p0, Lpq;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 171
    .line 172
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lww;)V

    .line 173
    .line 174
    .line 175
    iget-object p2, p0, Lpq;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 176
    .line 177
    const-string v1, "MONTHS_VIEW_GROUP_TAG"

    .line 178
    .line 179
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    new-instance p2, Lcs;

    .line 183
    .line 184
    iget-object v1, p0, Lpq;->V:Ly7;

    .line 185
    .line 186
    new-instance v3, Lo0;

    .line 187
    .line 188
    const/16 v6, 0x11

    .line 189
    .line 190
    invoke-direct {v3, v6, p0}, Lo0;-><init>(ILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-direct {p2, v0, v1, v3}, Lcs;-><init>(Landroid/view/ContextThemeWrapper;Ly7;Lo0;)V

    .line 194
    .line 195
    .line 196
    iget-object v1, p0, Lpq;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 197
    .line 198
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Low;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    sget v3, Lpv;->mtrl_calendar_year_selector_span:I

    .line 206
    .line 207
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    sget v3, Lnv;->mtrl_calendar_year_selector_frame:I

    .line 212
    .line 213
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 218
    .line 219
    iput-object v3, p0, Lpq;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 220
    .line 221
    const/4 v6, 0x0

    .line 222
    if-eqz v3, :cond_2

    .line 223
    .line 224
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 225
    .line 226
    .line 227
    iget-object v3, p0, Lpq;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 228
    .line 229
    new-instance v7, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 230
    .line 231
    invoke-direct {v7, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lww;)V

    .line 235
    .line 236
    .line 237
    iget-object v1, p0, Lpq;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 238
    .line 239
    new-instance v3, Ls80;

    .line 240
    .line 241
    invoke-direct {v3, p0}, Ls80;-><init>(Lpq;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Low;)V

    .line 245
    .line 246
    .line 247
    iget-object v1, p0, Lpq;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 248
    .line 249
    new-instance v3, Lnq;

    .line 250
    .line 251
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-static {v6}, Lm40;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 255
    .line 256
    .line 257
    invoke-static {v6}, Lm40;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->g(Ltw;)V

    .line 261
    .line 262
    .line 263
    :cond_2
    sget v1, Lnv;->month_navigation_fragment_toggle:I

    .line 264
    .line 265
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    if-eqz v1, :cond_3

    .line 270
    .line 271
    sget v1, Lnv;->month_navigation_fragment_toggle:I

    .line 272
    .line 273
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 278
    .line 279
    const-string v3, "SELECTOR_TOGGLE_TAG"

    .line 280
    .line 281
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    new-instance v3, La9;

    .line 285
    .line 286
    const/4 v7, 0x3

    .line 287
    invoke-direct {v3, v7, p0}, La9;-><init>(ILjava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    invoke-static {v1, v3}, Lw50;->l(Landroid/view/View;La0;)V

    .line 291
    .line 292
    .line 293
    sget v3, Lnv;->month_navigation_previous:I

    .line 294
    .line 295
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    iput-object v3, p0, Lpq;->b0:Landroid/view/View;

    .line 300
    .line 301
    const-string v7, "NAVIGATION_PREV_TAG"

    .line 302
    .line 303
    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    sget v3, Lnv;->month_navigation_next:I

    .line 307
    .line 308
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    iput-object v3, p0, Lpq;->c0:Landroid/view/View;

    .line 313
    .line 314
    const-string v7, "NAVIGATION_NEXT_TAG"

    .line 315
    .line 316
    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    sget v3, Lnv;->mtrl_calendar_year_selector_frame:I

    .line 320
    .line 321
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    iput-object v3, p0, Lpq;->d0:Landroid/view/View;

    .line 326
    .line 327
    sget v3, Lnv;->mtrl_calendar_day_selector_frame:I

    .line 328
    .line 329
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    iput-object v3, p0, Lpq;->e0:Landroid/view/View;

    .line 334
    .line 335
    invoke-virtual {p0, v5}, Lpq;->F(I)V

    .line 336
    .line 337
    .line 338
    iget-object v3, p0, Lpq;->W:Lzr;

    .line 339
    .line 340
    invoke-virtual {v3}, Lzr;->c()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    .line 346
    .line 347
    iget-object v3, p0, Lpq;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 348
    .line 349
    new-instance v7, Loq;

    .line 350
    .line 351
    invoke-direct {v7, p0, p2, v1}, Loq;-><init>(Lpq;Lcs;Lcom/google/android/material/button/MaterialButton;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->h(Lzw;)V

    .line 355
    .line 356
    .line 357
    new-instance v3, Ly0;

    .line 358
    .line 359
    const/4 v7, 0x2

    .line 360
    invoke-direct {v3, v7, p0}, Ly0;-><init>(ILjava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    .line 365
    .line 366
    iget-object v1, p0, Lpq;->c0:Landroid/view/View;

    .line 367
    .line 368
    new-instance v3, Lkq;

    .line 369
    .line 370
    invoke-direct {v3, p0, p2, v5}, Lkq;-><init>(Lpq;Lcs;I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    .line 375
    .line 376
    iget-object v1, p0, Lpq;->b0:Landroid/view/View;

    .line 377
    .line 378
    new-instance v3, Lkq;

    .line 379
    .line 380
    invoke-direct {v3, p0, p2, v4}, Lkq;-><init>(Lpq;Lcs;I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    .line 385
    .line 386
    :cond_3
    invoke-static {v0, v2}, Luq;->H(Landroid/content/Context;I)Z

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    if-nez v0, :cond_8

    .line 391
    .line 392
    new-instance v0, Ltt;

    .line 393
    .line 394
    invoke-direct {v0}, Ltt;-><init>()V

    .line 395
    .line 396
    .line 397
    iget-object v1, p0, Lpq;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 398
    .line 399
    iget-object v2, v0, Ltt;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 400
    .line 401
    if-ne v2, v1, :cond_4

    .line 402
    .line 403
    goto :goto_2

    .line 404
    :cond_4
    iget-object v3, v0, Ltt;->b:Li00;

    .line 405
    .line 406
    if-eqz v2, :cond_6

    .line 407
    .line 408
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->e0:Ljava/util/ArrayList;

    .line 409
    .line 410
    if-eqz v2, :cond_5

    .line 411
    .line 412
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    :cond_5
    iget-object v2, v0, Ltt;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 416
    .line 417
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Lyw;)V

    .line 418
    .line 419
    .line 420
    :cond_6
    iput-object v1, v0, Ltt;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 421
    .line 422
    if-eqz v1, :cond_8

    .line 423
    .line 424
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Lyw;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    if-nez v1, :cond_7

    .line 429
    .line 430
    iget-object v1, v0, Ltt;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 431
    .line 432
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->h(Lzw;)V

    .line 433
    .line 434
    .line 435
    iget-object v1, v0, Ltt;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 436
    .line 437
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Lyw;)V

    .line 438
    .line 439
    .line 440
    new-instance v1, Landroid/widget/Scroller;

    .line 441
    .line 442
    iget-object v2, v0, Ltt;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 443
    .line 444
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    .line 449
    .line 450
    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 451
    .line 452
    .line 453
    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0}, Ltt;->f()V

    .line 457
    .line 458
    .line 459
    goto :goto_2

    .line 460
    :cond_7
    const-string p0, "An instance of OnFlingListener already set."

    .line 461
    .line 462
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    return-object v6

    .line 466
    :cond_8
    :goto_2
    iget-object v0, p0, Lpq;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 467
    .line 468
    iget-object v1, p0, Lpq;->W:Lzr;

    .line 469
    .line 470
    iget-object p2, p2, Lcs;->c:Ly7;

    .line 471
    .line 472
    iget-object p2, p2, Ly7;->a:Lzr;

    .line 473
    .line 474
    invoke-virtual {p2, v1}, Lzr;->d(Lzr;)I

    .line 475
    .line 476
    .line 477
    move-result p2

    .line 478
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->Y(I)V

    .line 479
    .line 480
    .line 481
    iget-object p0, p0, Lpq;->a0:Landroidx/recyclerview/widget/RecyclerView;

    .line 482
    .line 483
    new-instance p2, Llq;

    .line 484
    .line 485
    invoke-direct {p2, v5}, Llq;-><init>(I)V

    .line 486
    .line 487
    .line 488
    invoke-static {p0, p2}, Lw50;->l(Landroid/view/View;La0;)V

    .line 489
    .line 490
    .line 491
    return-object p1
.end method

.method public final v(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "THEME_RES_ID_KEY"

    .line 2
    .line 3
    iget v1, p0, Lpq;->U:I

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    const-string v0, "GRID_SELECTOR_KEY"

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 15
    .line 16
    iget-object v2, p0, Lpq;->V:Ly7;

    .line 17
    .line 18
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "CURRENT_MONTH_KEY"

    .line 27
    .line 28
    iget-object p0, p0, Lpq;->W:Lzr;

    .line 29
    .line 30
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
