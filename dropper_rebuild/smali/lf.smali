.class public abstract Llf;
.super Ly10;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public c:I

.method public constructor <init>(I)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    sget-object v2, Lb20;->g:Lz10;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, v2}, Ly10;-><init>(JLz10;)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Llf;->c:I

    .line 9
    .line 10
    return-void
.end method

.method public abstract a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract b()Lmc;
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    .line 1
    instance-of p0, p1, Lpa;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lpa;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v0

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p0, p1, Lpa;->a:Ljava/lang/Throwable;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    return-object v0
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    invoke-static {p1, p2}, Lnm;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    if-nez p1, :cond_2

    .line 14
    .line 15
    move-object p1, p2

    .line 16
    :cond_2
    new-instance p2, Lld;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Fatal exception in coroutines machinery for "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Llf;->b()Lmc;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p0}, Lmc;->d()Lyc;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0, p2}, Lvd;->x(Lyc;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public abstract i()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 13

    .line 1
    sget-object v0, Lqg;->j:Lqg;

    .line 2
    .line 3
    iget-object v1, p0, Ly10;->b:Lz10;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Llf;->b()Lmc;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    check-cast v2, Ljf;

    .line 13
    .line 14
    iget-object v3, v2, Ljf;->e:Lnc;

    .line 15
    .line 16
    iget-object v2, v2, Ljf;->g:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v4, v3, Lnc;->b:Lyc;

    .line 19
    .line 20
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {v4, v2}, Ld40;->W(Lyc;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v5, Ld40;->y:Lo0;

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    if-eq v2, v5, :cond_0

    .line 31
    .line 32
    invoke-static {v3, v4, v2}, Lnm;->X(Lmc;Lyc;Ljava/lang/Object;)Lj40;

    .line 33
    .line 34
    .line 35
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v2

    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :cond_0
    move-object v5, v6

    .line 41
    :goto_0
    :try_start_1
    iget-object v7, v3, Lnc;->b:Lyc;

    .line 42
    .line 43
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Llf;->i()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-virtual {p0, v8}, Llf;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    if-nez v9, :cond_3

    .line 55
    .line 56
    iget v10, p0, Llf;->c:I

    .line 57
    .line 58
    const/4 v11, 0x1

    .line 59
    if-eq v10, v11, :cond_2

    .line 60
    .line 61
    const/4 v12, 0x2

    .line 62
    if-ne v10, v12, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 v11, 0x0

    .line 66
    :cond_2
    :goto_1
    if-eqz v11, :cond_3

    .line 67
    .line 68
    sget-object v10, Lqg;->d:Lqg;

    .line 69
    .line 70
    invoke-interface {v7, v10}, Lyc;->b(Lxc;)Lwc;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    check-cast v7, Lsm;

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catchall_1
    move-exception v3

    .line 78
    goto :goto_5

    .line 79
    :cond_3
    move-object v7, v6

    .line 80
    :goto_2
    if-eqz v7, :cond_4

    .line 81
    .line 82
    invoke-interface {v7}, Lsm;->a()Z

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    if-nez v10, :cond_4

    .line 87
    .line 88
    check-cast v7, Lbn;

    .line 89
    .line 90
    invoke-virtual {v7}, Lbn;->t()Ljava/util/concurrent/CancellationException;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-virtual {p0, v8, v7}, Llf;->a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    .line 95
    .line 96
    .line 97
    new-instance v8, Lly;

    .line 98
    .line 99
    invoke-direct {v8, v7}, Lly;-><init>(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v8}, Lnc;->f(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    if-eqz v9, :cond_5

    .line 107
    .line 108
    new-instance v7, Lly;

    .line 109
    .line 110
    invoke-direct {v7, v9}, Lly;-><init>(Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v7}, Lnc;->f(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    invoke-virtual {p0, v8}, Llf;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {v3, v7}, Lnc;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    .line 123
    .line 124
    :goto_3
    if-eqz v5, :cond_6

    .line 125
    .line 126
    :try_start_2
    invoke-virtual {v5}, Lj40;->U()Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_7

    .line 131
    .line 132
    :cond_6
    invoke-static {v4, v2}, Ld40;->L(Lyc;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    .line 134
    .line 135
    :cond_7
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :catchall_2
    move-exception v0

    .line 140
    new-instance v1, Lly;

    .line 141
    .line 142
    invoke-direct {v1, v0}, Lly;-><init>(Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    move-object v0, v1

    .line 146
    :goto_4
    invoke-static {v0}, Lmy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {p0, v6, v0}, Llf;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    goto :goto_8

    .line 154
    :goto_5
    if-eqz v5, :cond_8

    .line 155
    .line 156
    :try_start_4
    invoke-virtual {v5}, Lj40;->U()Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_9

    .line 161
    .line 162
    :cond_8
    invoke-static {v4, v2}, Ld40;->L(Lyc;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_9
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 166
    :goto_6
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 167
    .line 168
    .line 169
    goto :goto_7

    .line 170
    :catchall_3
    move-exception v0

    .line 171
    new-instance v1, Lly;

    .line 172
    .line 173
    invoke-direct {v1, v0}, Lly;-><init>(Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    move-object v0, v1

    .line 177
    :goto_7
    invoke-static {v0}, Lmy;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {p0, v2, v0}, Llf;->h(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    :goto_8
    return-void
.end method
