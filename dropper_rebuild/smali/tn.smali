.class public final Ltn;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public final a:Z

.field public b:Lyh;

.field public c:Lpn;

.field public final d:Ljava/lang/ref/WeakReference;

.field public e:I

.field public f:Z

.field public g:Z

.field public final h:Ljava/util/ArrayList;

.field public final i:Lc10;

.method public constructor <init>(Lrn;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Ltn;->a:Z

    .line 12
    .line 13
    new-instance v0, Lyh;

    .line 14
    .line 15
    invoke-direct {v0}, Lyh;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Ltn;->b:Lyh;

    .line 19
    .line 20
    sget-object v0, Lpn;->b:Lpn;

    .line 21
    .line 22
    iput-object v0, p0, Ltn;->c:Lpn;

    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Ltn;->h:Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Ltn;->d:Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    new-instance p1, Lc10;

    .line 39
    .line 40
    invoke-direct {p1, v0}, Lc10;-><init>(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Ltn;->i:Lc10;

    .line 44
    .line 45
    return-void
.end method

.method public final a(Lqn;)V
    .locals 8

    .line 1
    const-string v0, "addObserver"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ltn;->c(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ltn;->c:Lpn;

    .line 7
    .line 8
    sget-object v1, Lpn;->a:Lpn;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lpn;->b:Lpn;

    .line 14
    .line 15
    :goto_0
    new-instance v0, Lsn;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sget v2, Lvn;->a:I

    .line 21
    .line 22
    iput-object p1, v0, Lsn;->b:Lqn;

    .line 23
    .line 24
    iput-object v1, v0, Lsn;->a:Lpn;

    .line 25
    .line 26
    iget-object v1, p0, Ltn;->b:Lyh;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lyh;->a(Ljava/lang/Object;)Lry;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v1, v2, Lry;->b:Ljava/lang/Object;

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    iget-object v2, v1, Lyh;->e:Ljava/util/HashMap;

    .line 40
    .line 41
    new-instance v5, Lry;

    .line 42
    .line 43
    invoke-direct {v5, p1, v0}, Lry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget v6, v1, Luy;->d:I

    .line 47
    .line 48
    add-int/2addr v6, v4

    .line 49
    iput v6, v1, Luy;->d:I

    .line 50
    .line 51
    iget-object v6, v1, Luy;->b:Lry;

    .line 52
    .line 53
    if-nez v6, :cond_2

    .line 54
    .line 55
    iput-object v5, v1, Luy;->a:Lry;

    .line 56
    .line 57
    iput-object v5, v1, Luy;->b:Lry;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iput-object v5, v6, Lry;->c:Lry;

    .line 61
    .line 62
    iput-object v6, v5, Lry;->d:Lry;

    .line 63
    .line 64
    iput-object v5, v1, Luy;->b:Lry;

    .line 65
    .line 66
    :goto_1
    invoke-virtual {v2, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-object v1, v3

    .line 70
    :goto_2
    check-cast v1, Lsn;

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    iget-object v1, p0, Ltn;->d:Ljava/lang/ref/WeakReference;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lrn;

    .line 82
    .line 83
    if-nez v1, :cond_4

    .line 84
    .line 85
    :goto_3
    return-void

    .line 86
    :cond_4
    iget v2, p0, Ltn;->e:I

    .line 87
    .line 88
    if-nez v2, :cond_6

    .line 89
    .line 90
    iget-boolean v2, p0, Ltn;->f:Z

    .line 91
    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_5
    const/4 v2, 0x0

    .line 96
    goto :goto_5

    .line 97
    :cond_6
    :goto_4
    move v2, v4

    .line 98
    :goto_5
    invoke-virtual {p0, p1}, Ltn;->b(Lqn;)Lpn;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    iget v6, p0, Ltn;->e:I

    .line 103
    .line 104
    add-int/2addr v6, v4

    .line 105
    iput v6, p0, Ltn;->e:I

    .line 106
    .line 107
    :goto_6
    iget-object v6, v0, Lsn;->a:Lpn;

    .line 108
    .line 109
    invoke-virtual {v6, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-gez v5, :cond_b

    .line 114
    .line 115
    iget-object v5, p0, Ltn;->b:Lyh;

    .line 116
    .line 117
    iget-object v5, v5, Lyh;->e:Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_b

    .line 124
    .line 125
    iget-object v5, v0, Lsn;->a:Lpn;

    .line 126
    .line 127
    iget-object v6, p0, Ltn;->h:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    sget-object v5, Lon;->Companion:Lmn;

    .line 133
    .line 134
    iget-object v7, v0, Lsn;->a:Lpn;

    .line 135
    .line 136
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-eq v5, v4, :cond_9

    .line 147
    .line 148
    const/4 v7, 0x2

    .line 149
    if-eq v5, v7, :cond_8

    .line 150
    .line 151
    const/4 v7, 0x3

    .line 152
    if-eq v5, v7, :cond_7

    .line 153
    .line 154
    move-object v5, v3

    .line 155
    goto :goto_7

    .line 156
    :cond_7
    sget-object v5, Lon;->ON_RESUME:Lon;

    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_8
    sget-object v5, Lon;->ON_START:Lon;

    .line 160
    .line 161
    goto :goto_7

    .line 162
    :cond_9
    sget-object v5, Lon;->ON_CREATE:Lon;

    .line 163
    .line 164
    :goto_7
    if-eqz v5, :cond_a

    .line 165
    .line 166
    invoke-virtual {v0, v1, v5}, Lsn;->a(Lrn;Lon;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    sub-int/2addr v5, v4

    .line 174
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p1}, Ltn;->b(Lqn;)Lpn;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    goto :goto_6

    .line 182
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 183
    .line 184
    iget-object p1, v0, Lsn;->a:Lpn;

    .line 185
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v1, "no event up from "

    .line 189
    .line 190
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p0

    .line 204
    :cond_b
    if-nez v2, :cond_c

    .line 205
    .line 206
    invoke-virtual {p0}, Ltn;->g()V

    .line 207
    .line 208
    .line 209
    :cond_c
    iget p1, p0, Ltn;->e:I

    .line 210
    .line 211
    add-int/lit8 p1, p1, -0x1

    .line 212
    .line 213
    iput p1, p0, Ltn;->e:I

    .line 214
    .line 215
    return-void
.end method

.method public final b(Lqn;)Lpn;
    .locals 3

    .line 1
    iget-object v0, p0, Ltn;->b:Lyh;

    .line 2
    .line 3
    iget-object v0, v0, Lyh;->e:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lry;

    .line 17
    .line 18
    iget-object p1, p1, Lry;->d:Lry;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p1, v2

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p1, Lry;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lsn;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p1, Lsn;->a:Lpn;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object p1, v2

    .line 34
    :goto_1
    iget-object v0, p0, Ltn;->h:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v2, v0

    .line 53
    check-cast v2, Lpn;

    .line 54
    .line 55
    :cond_2
    iget-object p0, p0, Ltn;->c:Lpn;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-gez v0, :cond_3

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    move-object p1, p0

    .line 70
    :goto_2
    if-eqz v2, :cond_4

    .line 71
    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-gez p0, :cond_4

    .line 77
    .line 78
    return-object v2

    .line 79
    :cond_4
    return-object p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean p0, p0, Ltn;->a:Z

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lj6;->y()Lj6;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Lj6;->g:Lqe;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-ne p0, v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string p0, "Method "

    .line 30
    .line 31
    const-string v0, " must be called on the main thread"

    .line 32
    .line 33
    invoke-static {p0, p1, v0}, Lk00;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    return-void
.end method

.method public final d(Lon;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "handleLifecycleEvent"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ltn;->c(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lon;->a()Lpn;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Ltn;->e(Lpn;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final e(Lpn;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltn;->c:Lpn;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    sget-object v1, Lpn;->b:Lpn;

    .line 7
    .line 8
    sget-object v2, Lpn;->a:Lpn;

    .line 9
    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    if-eq p1, v2, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "State must be at least CREATED to move to "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, ", but was "

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Ltn;->c:Lpn;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Ltn;->d:Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, " in component "

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    :goto_0
    iput-object p1, p0, Ltn;->c:Lpn;

    .line 64
    .line 65
    iget-boolean p1, p0, Ltn;->f:Z

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    if-nez p1, :cond_5

    .line 69
    .line 70
    iget p1, p0, Ltn;->e:I

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    iput-boolean v0, p0, Ltn;->f:Z

    .line 76
    .line 77
    invoke-virtual {p0}, Ltn;->g()V

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Ltn;->f:Z

    .line 82
    .line 83
    iget-object p1, p0, Ltn;->c:Lpn;

    .line 84
    .line 85
    if-ne p1, v2, :cond_4

    .line 86
    .line 87
    new-instance p1, Lyh;

    .line 88
    .line 89
    invoke-direct {p1}, Lyh;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Ltn;->b:Lyh;

    .line 93
    .line 94
    :cond_4
    :goto_1
    return-void

    .line 95
    :cond_5
    :goto_2
    iput-boolean v0, p0, Ltn;->g:Z

    .line 96
    .line 97
    return-void
.end method

.method public final f(Lqn;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "removeObserver"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ltn;->c(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Ltn;->b:Lyh;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lyh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final g()V
    .locals 11

    .line 1
    iget-object v0, p0, Ltn;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Ltn;->d:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lrn;

    .line 10
    .line 11
    if-eqz v1, :cond_12

    .line 12
    .line 13
    :cond_0
    iget-object v2, p0, Ltn;->b:Lyh;

    .line 14
    .line 15
    iget v3, v2, Luy;->d:I

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x1

    .line 19
    const/4 v6, 0x0

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v2, v2, Luy;->a:Lry;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v2, v2, Lry;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Lsn;

    .line 31
    .line 32
    iget-object v2, v2, Lsn;->a:Lpn;

    .line 33
    .line 34
    iget-object v3, p0, Ltn;->b:Lyh;

    .line 35
    .line 36
    iget-object v3, v3, Luy;->b:Lry;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object v3, v3, Lry;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v3, Lsn;

    .line 44
    .line 45
    iget-object v3, v3, Lsn;->a:Lpn;

    .line 46
    .line 47
    if-ne v2, v3, :cond_6

    .line 48
    .line 49
    iget-object v2, p0, Ltn;->c:Lpn;

    .line 50
    .line 51
    if-ne v2, v3, :cond_6

    .line 52
    .line 53
    :goto_0
    iput-boolean v6, p0, Ltn;->g:Z

    .line 54
    .line 55
    iget-object v0, p0, Ltn;->i:Lc10;

    .line 56
    .line 57
    iget-object p0, p0, Ltn;->c:Lpn;

    .line 58
    .line 59
    if-nez p0, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    sget-object p0, Lvd;->t:Lo0;

    .line 65
    .line 66
    :cond_2
    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lc10;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v2, p0}, Lnm;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    monitor-exit v0

    .line 80
    goto :goto_3

    .line 81
    :cond_3
    :try_start_1
    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget p0, v0, Lc10;->a:I

    .line 85
    .line 86
    and-int/lit8 v1, p0, 0x1

    .line 87
    .line 88
    if-nez v1, :cond_5

    .line 89
    .line 90
    add-int/2addr p0, v5

    .line 91
    iput p0, v0, Lc10;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    .line 93
    monitor-exit v0

    .line 94
    :goto_1
    monitor-enter v0

    .line 95
    :try_start_2
    iget v1, v0, Lc10;->a:I

    .line 96
    .line 97
    if-ne v1, p0, :cond_4

    .line 98
    .line 99
    add-int/2addr p0, v5

    .line 100
    iput p0, v0, Lc10;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    .line 102
    monitor-exit v0

    .line 103
    goto :goto_3

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    monitor-exit v0

    .line 107
    move p0, v1

    .line 108
    goto :goto_1

    .line 109
    :goto_2
    monitor-exit v0

    .line 110
    throw p0

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    goto :goto_4

    .line 113
    :cond_5
    add-int/2addr p0, v4

    .line 114
    :try_start_3
    iput p0, v0, Lc10;->a:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    .line 116
    monitor-exit v0

    .line 117
    :goto_3
    return-void

    .line 118
    :goto_4
    monitor-exit v0

    .line 119
    throw p0

    .line 120
    :cond_6
    iput-boolean v6, p0, Ltn;->g:Z

    .line 121
    .line 122
    iget-object v2, p0, Ltn;->c:Lpn;

    .line 123
    .line 124
    iget-object v3, p0, Ltn;->b:Lyh;

    .line 125
    .line 126
    iget-object v3, v3, Luy;->a:Lry;

    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    iget-object v3, v3, Lry;->b:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v3, Lsn;

    .line 134
    .line 135
    iget-object v3, v3, Lsn;->a:Lpn;

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    const/4 v3, 0x0

    .line 142
    const/4 v6, 0x3

    .line 143
    if-gez v2, :cond_c

    .line 144
    .line 145
    iget-object v2, p0, Ltn;->b:Lyh;

    .line 146
    .line 147
    new-instance v7, Lqy;

    .line 148
    .line 149
    iget-object v8, v2, Luy;->b:Lry;

    .line 150
    .line 151
    iget-object v9, v2, Luy;->a:Lry;

    .line 152
    .line 153
    invoke-direct {v7, v8, v9, v5}, Lqy;-><init>(Lry;Lry;I)V

    .line 154
    .line 155
    .line 156
    iget-object v2, v2, Luy;->c:Ljava/util/WeakHashMap;

    .line 157
    .line 158
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 159
    .line 160
    invoke-virtual {v2, v7, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    :cond_7
    invoke-virtual {v7}, Lqy;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_c

    .line 168
    .line 169
    iget-boolean v2, p0, Ltn;->g:Z

    .line 170
    .line 171
    if-nez v2, :cond_c

    .line 172
    .line 173
    invoke-virtual {v7}, Lqy;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Ljava/util/Map$Entry;

    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    check-cast v8, Lqn;

    .line 187
    .line 188
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    check-cast v2, Lsn;

    .line 193
    .line 194
    :goto_5
    iget-object v9, v2, Lsn;->a:Lpn;

    .line 195
    .line 196
    iget-object v10, p0, Ltn;->c:Lpn;

    .line 197
    .line 198
    invoke-virtual {v9, v10}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    if-lez v9, :cond_7

    .line 203
    .line 204
    iget-boolean v9, p0, Ltn;->g:Z

    .line 205
    .line 206
    if-nez v9, :cond_7

    .line 207
    .line 208
    iget-object v9, p0, Ltn;->b:Lyh;

    .line 209
    .line 210
    iget-object v9, v9, Lyh;->e:Ljava/util/HashMap;

    .line 211
    .line 212
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    if-eqz v9, :cond_7

    .line 217
    .line 218
    sget-object v9, Lon;->Companion:Lmn;

    .line 219
    .line 220
    iget-object v10, v2, Lsn;->a:Lpn;

    .line 221
    .line 222
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 229
    .line 230
    .line 231
    move-result v9

    .line 232
    if-eq v9, v4, :cond_a

    .line 233
    .line 234
    if-eq v9, v6, :cond_9

    .line 235
    .line 236
    const/4 v10, 0x4

    .line 237
    if-eq v9, v10, :cond_8

    .line 238
    .line 239
    move-object v9, v3

    .line 240
    goto :goto_6

    .line 241
    :cond_8
    sget-object v9, Lon;->ON_PAUSE:Lon;

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_9
    sget-object v9, Lon;->ON_STOP:Lon;

    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_a
    sget-object v9, Lon;->ON_DESTROY:Lon;

    .line 248
    .line 249
    :goto_6
    if-eqz v9, :cond_b

    .line 250
    .line 251
    invoke-virtual {v9}, Lon;->a()Lpn;

    .line 252
    .line 253
    .line 254
    move-result-object v10

    .line 255
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v1, v9}, Lsn;->a(Lrn;Lon;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    sub-int/2addr v9, v5

    .line 266
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 271
    .line 272
    const-string v0, "no event down from "

    .line 273
    .line 274
    iget-object v1, v2, Lsn;->a:Lpn;

    .line 275
    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    throw p0

    .line 292
    :cond_c
    iget-object v2, p0, Ltn;->b:Lyh;

    .line 293
    .line 294
    iget-object v2, v2, Luy;->b:Lry;

    .line 295
    .line 296
    iget-boolean v7, p0, Ltn;->g:Z

    .line 297
    .line 298
    if-nez v7, :cond_0

    .line 299
    .line 300
    if-eqz v2, :cond_0

    .line 301
    .line 302
    iget-object v7, p0, Ltn;->c:Lpn;

    .line 303
    .line 304
    iget-object v2, v2, Lry;->b:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v2, Lsn;

    .line 307
    .line 308
    iget-object v2, v2, Lsn;->a:Lpn;

    .line 309
    .line 310
    invoke-virtual {v7, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-lez v2, :cond_0

    .line 315
    .line 316
    iget-object v2, p0, Ltn;->b:Lyh;

    .line 317
    .line 318
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    new-instance v7, Lsy;

    .line 322
    .line 323
    invoke-direct {v7, v2}, Lsy;-><init>(Luy;)V

    .line 324
    .line 325
    .line 326
    iget-object v2, v2, Luy;->c:Ljava/util/WeakHashMap;

    .line 327
    .line 328
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 329
    .line 330
    invoke-virtual {v2, v7, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    :cond_d
    invoke-virtual {v7}, Lsy;->hasNext()Z

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    if-eqz v2, :cond_0

    .line 338
    .line 339
    iget-boolean v2, p0, Ltn;->g:Z

    .line 340
    .line 341
    if-nez v2, :cond_0

    .line 342
    .line 343
    invoke-virtual {v7}, Lsy;->next()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    check-cast v2, Ljava/util/Map$Entry;

    .line 348
    .line 349
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    check-cast v8, Lqn;

    .line 354
    .line 355
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    check-cast v2, Lsn;

    .line 360
    .line 361
    :goto_7
    iget-object v9, v2, Lsn;->a:Lpn;

    .line 362
    .line 363
    iget-object v10, p0, Ltn;->c:Lpn;

    .line 364
    .line 365
    invoke-virtual {v9, v10}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 366
    .line 367
    .line 368
    move-result v9

    .line 369
    if-gez v9, :cond_d

    .line 370
    .line 371
    iget-boolean v9, p0, Ltn;->g:Z

    .line 372
    .line 373
    if-nez v9, :cond_d

    .line 374
    .line 375
    iget-object v9, p0, Ltn;->b:Lyh;

    .line 376
    .line 377
    iget-object v9, v9, Lyh;->e:Ljava/util/HashMap;

    .line 378
    .line 379
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v9

    .line 383
    if-eqz v9, :cond_d

    .line 384
    .line 385
    iget-object v9, v2, Lsn;->a:Lpn;

    .line 386
    .line 387
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    sget-object v9, Lon;->Companion:Lmn;

    .line 391
    .line 392
    iget-object v10, v2, Lsn;->a:Lpn;

    .line 393
    .line 394
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 401
    .line 402
    .line 403
    move-result v9

    .line 404
    if-eq v9, v5, :cond_10

    .line 405
    .line 406
    if-eq v9, v4, :cond_f

    .line 407
    .line 408
    if-eq v9, v6, :cond_e

    .line 409
    .line 410
    move-object v9, v3

    .line 411
    goto :goto_8

    .line 412
    :cond_e
    sget-object v9, Lon;->ON_RESUME:Lon;

    .line 413
    .line 414
    goto :goto_8

    .line 415
    :cond_f
    sget-object v9, Lon;->ON_START:Lon;

    .line 416
    .line 417
    goto :goto_8

    .line 418
    :cond_10
    sget-object v9, Lon;->ON_CREATE:Lon;

    .line 419
    .line 420
    :goto_8
    if-eqz v9, :cond_11

    .line 421
    .line 422
    invoke-virtual {v2, v1, v9}, Lsn;->a(Lrn;Lon;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 426
    .line 427
    .line 428
    move-result v9

    .line 429
    sub-int/2addr v9, v5

    .line 430
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    goto :goto_7

    .line 434
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 435
    .line 436
    const-string v0, "no event up from "

    .line 437
    .line 438
    iget-object v1, v2, Lsn;->a:Lpn;

    .line 439
    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    throw p0

    .line 456
    :cond_12
    const-string p0, "LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state."

    .line 457
    .line 458
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    return-void
.end method
