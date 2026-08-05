.class public final Lcom/pulse/live/ui/MainActivity;
.super Lf3;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public static final synthetic L:I

.field public A:Landroid/animation/AnimatorSet;

.field public final B:Landroid/os/Handler;

.field public final C:Lkc;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Lpp;

.field public I:Ljava/io/File;

.field public J:Lz00;

.field public final K:Le2;

.field public y:Landroid/widget/ProgressBar;

.field public z:Landroid/widget/TextView;

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lf3;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/pulse/live/ui/MainActivity;->B:Landroid/os/Handler;

    .line 14
    .line 15
    sget-object v0, Lmf;->a:Lie;

    .line 16
    .line 17
    sget-object v0, Lwp;->a:Lvp;

    .line 18
    .line 19
    new-instance v1, Lm10;

    .line 20
    .line 21
    invoke-direct {v1}, Lvm;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Ld40;->B(Lyc;Lyc;)Lyc;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lnm;->c(Lyc;)Lkc;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/pulse/live/ui/MainActivity;->C:Lkc;

    .line 36
    .line 37
    new-instance v0, La2;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-direct {v0, v1}, La2;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lkg;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lkg;-><init>(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Ldb;->i:Lbb;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v4, "activity_rq#"

    .line 56
    .line 57
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v4, p0, Ldb;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iget-object v4, v2, Lbb;->c:Ljava/util/LinkedHashMap;

    .line 74
    .line 75
    iget-object v5, p0, Ldb;->a:Ltn;

    .line 76
    .line 77
    iget-object v6, v5, Ltn;->c:Lpn;

    .line 78
    .line 79
    sget-object v7, Lpn;->d:Lpn;

    .line 80
    .line 81
    invoke-virtual {v6, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-gez v6, :cond_1

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Lbb;->d(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    check-cast v6, Ld2;

    .line 95
    .line 96
    if-nez v6, :cond_0

    .line 97
    .line 98
    new-instance v6, Ld2;

    .line 99
    .line 100
    invoke-direct {v6, v5}, Ld2;-><init>(Ltn;)V

    .line 101
    .line 102
    .line 103
    :cond_0
    new-instance v5, Lb2;

    .line 104
    .line 105
    invoke-direct {v5, v2, v3, v1, v0}, Lb2;-><init>(Lbb;Ljava/lang/String;Lkg;La2;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v6, Ld2;->a:Ltn;

    .line 109
    .line 110
    invoke-virtual {v1, v5}, Ltn;->a(Lqn;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v6, Ld2;->b:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    new-instance v1, Le2;

    .line 122
    .line 123
    invoke-direct {v1, v2, v3, v0}, Le2;-><init>(Lbb;Ljava/lang/String;La2;)V

    .line 124
    .line 125
    .line 126
    iput-object v1, p0, Lcom/pulse/live/ui/MainActivity;->K:Le2;

    .line 127
    .line 128
    return-void

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v1, "LifecycleOwner "

    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object p0, v5, Ltn;->c:Lpn;

    .line 140
    .line 141
    const-string v1, " is attempting to register while current state is "

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string p0, ". LifecycleOwners must call register before they are STARTED."

    .line 150
    .line 151
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 159
    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0
.end method

.method public static final s(Lcom/pulse/live/ui/MainActivity;JLnc;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lqg;->j:Lqg;

    .line 2
    .line 3
    instance-of v1, p3, Lnp;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p3

    .line 8
    check-cast v1, Lnp;

    .line 9
    .line 10
    iget v2, v1, Lnp;->h:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lnp;->h:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lnp;

    .line 23
    .line 24
    invoke-direct {v1, p0, p3}, Lnp;-><init>(Lcom/pulse/live/ui/MainActivity;Lnc;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p3, v1, Lnp;->f:Ljava/lang/Object;

    .line 28
    .line 29
    iget v2, v1, Lnp;->h:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-wide p1, v1, Lnp;->e:J

    .line 37
    .line 38
    iget-wide v4, v1, Lnp;->d:J

    .line 39
    .line 40
    invoke-static {p3}, Lzt;->w(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    move-object p3, v1

    .line 44
    move-wide v1, v4

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    return-object p0

    .line 53
    :cond_2
    invoke-static {p3}, Lzt;->w(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    move-object p3, v1

    .line 61
    move-wide v1, p1

    .line 62
    move-wide p1, v4

    .line 63
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    sub-long/2addr v4, p1

    .line 68
    cmp-long v4, v4, v1

    .line 69
    .line 70
    if-gez v4, :cond_5

    .line 71
    .line 72
    :try_start_0
    invoke-static {p0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    if-nez v4, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    iput-wide v1, p3, Lnp;->d:J

    .line 80
    .line 81
    iput-wide p1, p3, Lnp;->e:J

    .line 82
    .line 83
    iput v3, p3, Lnp;->h:I

    .line 84
    .line 85
    const-wide/16 v4, 0xfa

    .line 86
    .line 87
    invoke-static {v4, v5, p3}, Ld40;->m(JLnc;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    sget-object v5, Lid;->a:Lid;

    .line 92
    .line 93
    if-ne v4, v5, :cond_3

    .line 94
    .line 95
    return-object v5

    .line 96
    :catch_0
    :cond_5
    :goto_2
    return-object v0
.end method

.method public final A()Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "app_state"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v2, "target_pkg"

    .line 9
    .line 10
    const-string v3, ""

    .line 11
    .line 12
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    move-object v4, v3

    .line 19
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-lez v5, :cond_1

    .line 24
    .line 25
    return-object v4

    .line 26
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/String;

    .line 27
    .line 28
    sget-object v5, Lvd;->y:[B

    .line 29
    .line 30
    const/16 v6, 0xe

    .line 31
    .line 32
    new-array v7, v6, [B

    .line 33
    .line 34
    :goto_0
    if-ge v1, v6, :cond_2

    .line 35
    .line 36
    aget-byte v8, v5, v1

    .line 37
    .line 38
    xor-int/lit16 v8, v8, 0xe7

    .line 39
    .line 40
    int-to-byte v8, v8

    .line 41
    aput-byte v8, v7, v1

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    sget-object v1, Lz8;->a:Ljava/nio/charset/Charset;

    .line 47
    .line 48
    invoke-direct {v4, v7, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-lez v1, :cond_3

    .line 56
    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    return-object v4

    .line 69
    :catch_0
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string v1, ".tp"

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    sget-object v1, Lz8;->a:Ljava/nio/charset/Charset;

    .line 83
    .line 84
    new-instance v4, Ljava/io/InputStreamReader;

    .line 85
    .line 86
    invoke-direct {v4, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 87
    .line 88
    .line 89
    new-instance p0, Ljava/io/BufferedReader;

    .line 90
    .line 91
    const/16 v1, 0x2000

    .line 92
    .line 93
    invoke-direct {p0, v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .line 95
    .line 96
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    invoke-static {v1}, Lj10;->r(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    if-nez v1, :cond_5

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    goto :goto_2

    .line 115
    :cond_4
    :goto_1
    move-object v1, v3

    .line 116
    :cond_5
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-lez p0, :cond_6

    .line 124
    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 134
    .line 135
    .line 136
    return-object v1

    .line 137
    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    :catchall_1
    move-exception v1

    .line 139
    :try_start_5
    invoke-static {p0, v0}, Lvd;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 143
    :catch_1
    :cond_6
    return-object v3
.end method

.method public final B()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "app_state"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "target_pkg2"

    .line 9
    .line 10
    const-string v2, ""

    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    move-object v3, v2

    .line 19
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-lez v4, :cond_1

    .line 24
    .line 25
    return-object v3

    .line 26
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v3, ".tp2"

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget-object v3, Lz8;->a:Ljava/nio/charset/Charset;

    .line 40
    .line 41
    new-instance v4, Ljava/io/InputStreamReader;

    .line 42
    .line 43
    invoke-direct {v4, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 44
    .line 45
    .line 46
    new-instance p0, Ljava/io/BufferedReader;

    .line 47
    .line 48
    const/16 v3, 0x2000

    .line 49
    .line 50
    invoke-direct {p0, v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-static {v3}, Lj10;->r(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    if-nez v3, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    move-object v3, v2

    .line 73
    :cond_3
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-lez p0, :cond_4

    .line 81
    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    .line 92
    .line 93
    return-object v3

    .line 94
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    :catchall_1
    move-exception v1

    .line 96
    :try_start_4
    invoke-static {p0, v0}, Lvd;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 100
    :catch_0
    :cond_4
    return-object v2
.end method

.method public final C()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/pulse/live/service/SecureService;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "STOP"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    return-void
.end method

.method public final D(Ljava/io/File;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/pulse/live/ui/MainActivity;->F:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/pulse/live/ui/MainActivity;->G:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ".fileprovider"

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p0, v0, p1}, Landroidx/core/content/FileProvider;->d(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    new-instance v0, Landroid/content/Intent;

    .line 39
    .line 40
    const-string v1, "android.intent.action.VIEW"

    .line 41
    .line 42
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "application/vnd.android.package-archive"

    .line 46
    .line 47
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    const/high16 p1, 0x10000000

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    new-instance p1, Lp3;

    .line 60
    .line 61
    const/4 v1, 0x2

    .line 62
    invoke-direct {p1, p0, v1, v0}, Lp3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/pulse/live/ui/MainActivity;->B:Landroid/os/Handler;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ldb;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x3e9

    .line 5
    .line 6
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/pulse/live/ui/MainActivity;->J:Lz00;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-interface {p1, p2}, Lsm;->g(Ljava/util/concurrent/CancellationException;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/pulse/live/ui/MainActivity;->u()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Ldb;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/pulse/live/ui/MainActivity;->A()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0}, Lcom/pulse/live/ui/MainActivity;->B()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v5, 0x1

    .line 19
    if-lez v3, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/pulse/live/ui/MainActivity;->v(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0, v2}, Lcom/pulse/live/ui/MainActivity;->v(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    :goto_0
    move v2, v5

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v2, 0x0

    .line 41
    :goto_1
    if-eqz v3, :cond_2

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/pulse/live/ui/MainActivity;->w(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    sget v1, Lsv;->activity_main:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lf3;->setContentView(I)V

    .line 52
    .line 53
    .line 54
    sget v1, Lev;->progressBar:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lf3;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    check-cast v1, Landroid/widget/ProgressBar;

    .line 64
    .line 65
    iput-object v1, v0, Lcom/pulse/live/ui/MainActivity;->y:Landroid/widget/ProgressBar;

    .line 66
    .line 67
    sget v1, Lev;->statusText:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lf3;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    check-cast v1, Landroid/widget/TextView;

    .line 77
    .line 78
    iput-object v1, v0, Lcom/pulse/live/ui/MainActivity;->z:Landroid/widget/TextView;

    .line 79
    .line 80
    iput-boolean v5, v0, Lcom/pulse/live/ui/MainActivity;->E:Z

    .line 81
    .line 82
    sget v1, Lev;->dot_r1c1:I

    .line 83
    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    sget v1, Lev;->dot_r1c2:I

    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    sget v1, Lev;->dot_r1c3:I

    .line 95
    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    sget v1, Lev;->dot_r2c1:I

    .line 101
    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    sget v1, Lev;->dot_r2c2:I

    .line 107
    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    sget v1, Lev;->dot_r2c3:I

    .line 113
    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    sget v1, Lev;->dot_r3c1:I

    .line 119
    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    sget v1, Lev;->dot_r3c2:I

    .line 125
    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v13

    .line 130
    sget v1, Lev;->dot_r3c3:I

    .line 131
    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v14

    .line 136
    sget v1, Lev;->dot_extra:I

    .line 137
    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v15

    .line 142
    filled-new-array/range {v6 .. v15}, [Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v1}, Lca;->c0([Ljava/lang/Object;)Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_4

    .line 164
    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    check-cast v3, Ljava/lang/Number;

    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    invoke-virtual {v0, v3}, Lf3;->findViewById(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    if-eqz v3, :cond_3

    .line 180
    .line 181
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_4
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 186
    .line 187
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 188
    .line 189
    .line 190
    iput-object v1, v0, Lcom/pulse/live/ui/MainActivity;->A:Landroid/animation/AnimatorSet;

    .line 191
    .line 192
    new-instance v1, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    const/4 v6, 0x0

    .line 206
    const/4 v7, 0x0

    .line 207
    :goto_3
    if-ge v7, v3, :cond_6

    .line 208
    .line 209
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    add-int/lit8 v7, v7, 0x1

    .line 214
    .line 215
    add-int/lit8 v10, v6, 0x1

    .line 216
    .line 217
    if-ltz v6, :cond_5

    .line 218
    .line 219
    check-cast v9, Landroid/view/View;

    .line 220
    .line 221
    new-instance v11, Landroid/animation/AnimatorSet;

    .line 222
    .line 223
    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 224
    .line 225
    .line 226
    const/4 v12, 0x3

    .line 227
    new-array v13, v12, [F

    .line 228
    .line 229
    fill-array-data v13, :array_0

    .line 230
    .line 231
    .line 232
    const-string v14, "scaleX"

    .line 233
    .line 234
    invoke-static {v9, v14, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 235
    .line 236
    .line 237
    move-result-object v13

    .line 238
    const-wide/16 v14, 0x7d0

    .line 239
    .line 240
    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 241
    .line 242
    .line 243
    const/16 p1, 0x0

    .line 244
    .line 245
    const/4 v4, -0x1

    .line 246
    invoke-virtual {v13, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 247
    .line 248
    .line 249
    move/from16 v16, v5

    .line 250
    .line 251
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 252
    .line 253
    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v13, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 257
    .line 258
    .line 259
    int-to-long v5, v6

    .line 260
    const-wide/16 v17, 0x96

    .line 261
    .line 262
    move-wide/from16 v19, v5

    .line 263
    .line 264
    mul-long v4, v19, v17

    .line 265
    .line 266
    invoke-virtual {v13, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 267
    .line 268
    .line 269
    new-array v6, v12, [F

    .line 270
    .line 271
    fill-array-data v6, :array_1

    .line 272
    .line 273
    .line 274
    const/16 v17, 0x2

    .line 275
    .line 276
    const-string v8, "scaleY"

    .line 277
    .line 278
    invoke-static {v9, v8, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    invoke-virtual {v6, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 283
    .line 284
    .line 285
    const/4 v8, -0x1

    .line 286
    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 287
    .line 288
    .line 289
    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 290
    .line 291
    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v6, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v6, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 298
    .line 299
    .line 300
    new-array v8, v12, [F

    .line 301
    .line 302
    fill-array-data v8, :array_2

    .line 303
    .line 304
    .line 305
    const-string v12, "alpha"

    .line 306
    .line 307
    invoke-static {v9, v12, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    invoke-virtual {v8, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 312
    .line 313
    .line 314
    const/4 v12, -0x1

    .line 315
    invoke-virtual {v8, v12}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 316
    .line 317
    .line 318
    new-instance v14, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 319
    .line 320
    invoke-direct {v14}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v8, v14}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v8, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 327
    .line 328
    .line 329
    const/4 v4, 0x3

    .line 330
    new-array v5, v4, [F

    .line 331
    .line 332
    fill-array-data v5, :array_3

    .line 333
    .line 334
    .line 335
    const-string v4, "translationY"

    .line 336
    .line 337
    invoke-static {v9, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    const-wide/16 v14, 0x960

    .line 342
    .line 343
    invoke-virtual {v4, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4, v12}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 347
    .line 348
    .line 349
    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    .line 350
    .line 351
    const/high16 v9, 0x3fc00000

    .line 352
    .line 353
    invoke-direct {v5, v9}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 357
    .line 358
    .line 359
    const-wide/16 v14, 0x78

    .line 360
    .line 361
    mul-long v14, v14, v19

    .line 362
    .line 363
    invoke-virtual {v4, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 364
    .line 365
    .line 366
    const/4 v5, 0x4

    .line 367
    new-array v5, v5, [Landroid/animation/Animator;

    .line 368
    .line 369
    aput-object v13, v5, p1

    .line 370
    .line 371
    aput-object v6, v5, v16

    .line 372
    .line 373
    aput-object v8, v5, v17

    .line 374
    .line 375
    const/16 v18, 0x3

    .line 376
    .line 377
    aput-object v4, v5, v18

    .line 378
    .line 379
    invoke-virtual {v11, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move v6, v10

    .line 386
    move/from16 v5, v16

    .line 387
    .line 388
    goto/16 :goto_3

    .line 389
    .line 390
    :cond_5
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 391
    .line 392
    const-string v1, "Index overflow has happened."

    .line 393
    .line 394
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    throw v0

    .line 398
    :cond_6
    const/16 v17, 0x2

    .line 399
    .line 400
    iget-object v2, v0, Lcom/pulse/live/ui/MainActivity;->A:Landroid/animation/AnimatorSet;

    .line 401
    .line 402
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 406
    .line 407
    .line 408
    iget-object v1, v0, Lcom/pulse/live/ui/MainActivity;->A:Landroid/animation/AnimatorSet;

    .line 409
    .line 410
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0}, Lcom/pulse/live/ui/MainActivity;->A()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-virtual {v0}, Lcom/pulse/live/ui/MainActivity;->B()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    if-nez v3, :cond_7

    .line 429
    .line 430
    goto :goto_4

    .line 431
    :cond_7
    new-instance v3, Lpp;

    .line 432
    .line 433
    invoke-direct {v3, v0, v1, v2}, Lpp;-><init>(Lcom/pulse/live/ui/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    iput-object v3, v0, Lcom/pulse/live/ui/MainActivity;->H:Lpp;

    .line 437
    .line 438
    new-instance v1, Landroid/content/IntentFilter;

    .line 439
    .line 440
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 441
    .line 442
    .line 443
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 444
    .line 445
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 449
    .line 450
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    const-string v2, "package"

    .line 454
    .line 455
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 459
    .line 460
    iget-object v3, v0, Lcom/pulse/live/ui/MainActivity;->H:Lpp;

    .line 461
    .line 462
    const/16 v4, 0x21

    .line 463
    .line 464
    if-lt v2, v4, :cond_8

    .line 465
    .line 466
    move/from16 v2, v17

    .line 467
    .line 468
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 469
    .line 470
    .line 471
    goto :goto_4

    .line 472
    :cond_8
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 473
    .line 474
    .line 475
    :goto_4
    invoke-virtual {v0}, Lcom/pulse/live/ui/MainActivity;->u()V

    .line 476
    .line 477
    .line 478
    return-void

    .line 479
    :array_0
    .array-data 4
        0x3f19999a
        0x3f99999a
        0x3f19999a
    .end array-data

    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    :array_1
    .array-data 4
        0x3f19999a
        0x3f99999a
        0x3f19999a
    .end array-data

    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    :array_2
    .array-data 4
        0x3f000000
        0x3f800000
        0x3f000000
    .end array-data

    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    :array_3
    .array-data 4
        0x0
        -0x3f000000
        0x0
    .end array-data
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/pulse/live/ui/MainActivity;->J:Lz00;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0, v1}, Lsm;->g(Ljava/util/concurrent/CancellationException;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/pulse/live/ui/MainActivity;->H:Lpp;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    iput-object v1, p0, Lcom/pulse/live/ui/MainActivity;->H:Lpp;

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/pulse/live/ui/MainActivity;->A:Landroid/animation/AnimatorSet;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lcom/pulse/live/ui/MainActivity;->B:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/pulse/live/ui/MainActivity;->C:Lkc;

    .line 31
    .line 32
    iget-object v2, v0, Lkc;->a:Lyc;

    .line 33
    .line 34
    sget-object v3, Lqg;->d:Lqg;

    .line 35
    .line 36
    invoke-interface {v2, v3}, Lyc;->b(Lxc;)Lwc;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lsm;

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-interface {v2, v1}, Lsm;->g(Ljava/util/concurrent/CancellationException;)V

    .line 45
    .line 46
    .line 47
    invoke-super {p0}, Lf3;->onDestroy()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    const-string p0, "Scope cannot be cancelled because it does not have a job: "

    .line 52
    .line 53
    invoke-static {v0, p0}, Lg9;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Ldb;->onNewIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "android.content.pm.extra.STATUS"

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const-string v1, "install_slot"

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    packed-switch v0, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :pswitch_0
    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    iget-boolean p1, p0, Lcom/pulse/live/ui/MainActivity;->E:Z

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    iget-object p1, p0, Lcom/pulse/live/ui/MainActivity;->z:Landroid/widget/TextView;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    sget v0, Lwv;->status_error:I

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    const-string p0, "statusText"

    .line 55
    .line 56
    invoke-static {p0}, Lnm;->T(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    throw p0

    .line 61
    :pswitch_1
    sget p1, Lcom/pulse/live/service/InstallResultReceiver;->a:I

    .line 62
    .line 63
    new-instance p1, Lmp;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-direct {p1, p0, v1, v0}, Lmp;-><init>(Lcom/pulse/live/ui/MainActivity;II)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/pulse/live/ui/MainActivity;->B:Landroid/os/Handler;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    .line 77
    const/16 v1, 0x21

    .line 78
    .line 79
    if-lt v0, v1, :cond_2

    .line 80
    .line 81
    invoke-static {p1}, Lf0;->g(Landroid/content/Intent;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Landroid/content/Intent;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    const-string v0, "android.intent.extra.INTENT"

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Landroid/content/Intent;

    .line 95
    .line 96
    :goto_0
    if-eqz p1, :cond_3

    .line 97
    .line 98
    const/high16 v0, 0x10000000

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :catch_0
    iget-object p1, p0, Lcom/pulse/live/ui/MainActivity;->I:Ljava/io/File;

    .line 108
    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Lcom/pulse/live/ui/MainActivity;->D(Ljava/io/File;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    iget-object p1, p0, Lcom/pulse/live/ui/MainActivity;->I:Ljava/io/File;

    .line 116
    .line 117
    if-eqz p1, :cond_4

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Lcom/pulse/live/ui/MainActivity;->D(Ljava/io/File;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    :goto_1
    return-void

    .line 123
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Ldb;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/pulse/live/ui/MainActivity;->G:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/pulse/live/ui/MainActivity;->A()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lcom/pulse/live/ui/MainActivity;->B()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0, v1}, Lcom/pulse/live/ui/MainActivity;->v(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    :goto_0
    const/4 v1, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v1, 0x0

    .line 36
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-lez v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/pulse/live/ui/MainActivity;->v(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/pulse/live/ui/MainActivity;->y(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void
.end method

.method public final t(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/pulse/live/ui/MainActivity;->E:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/pulse/live/ui/MainActivity;->y:Landroid/widget/ProgressBar;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "progressBar"

    .line 10
    .line 11
    if-eqz v0, :cond_6

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object p0, p0, Lcom/pulse/live/ui/MainActivity;->y:Landroid/widget/ProgressBar;

    .line 18
    .line 19
    if-gt p1, v0, :cond_2

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-static {v2}, Lnm;->T(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v1

    .line 31
    :cond_2
    if-eqz p0, :cond_5

    .line 32
    .line 33
    const-string v1, "progress"

    .line 34
    .line 35
    filled-new-array {v0, p1}, [I

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    sub-int/2addr p1, v0

    .line 44
    int-to-long v0, p1

    .line 45
    const-wide/16 v2, 0x1e

    .line 46
    .line 47
    mul-long/2addr v0, v2

    .line 48
    const-wide/16 v2, 0xc8

    .line 49
    .line 50
    cmp-long p1, v0, v2

    .line 51
    .line 52
    if-gez p1, :cond_3

    .line 53
    .line 54
    :goto_0
    move-wide v0, v2

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    const-wide/16 v2, 0x5dc

    .line 57
    .line 58
    cmp-long p1, v0, v2

    .line 59
    .line 60
    if-lez p1, :cond_4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 64
    .line 65
    .line 66
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 67
    .line 68
    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    invoke-static {v2}, Lnm;->T(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v1

    .line 82
    :cond_6
    invoke-static {v2}, Lnm;->T(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v1
.end method

.method public final u()V
    .locals 5

    .line 1
    const-string v0, "statusText"

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/pulse/live/ui/MainActivity;->D:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/pulse/live/ui/MainActivity;->A()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/pulse/live/ui/MainActivity;->B()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x1

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0, v2}, Lcom/pulse/live/ui/MainActivity;->v(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    :goto_0
    move v2, v4

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 v2, 0x0

    .line 34
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-lez v3, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/pulse/live/ui/MainActivity;->v(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lcom/pulse/live/ui/MainActivity;->y(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    const/4 v1, 0x0

    .line 53
    :try_start_0
    invoke-static {p0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    if-nez v2, :cond_4

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    const/16 v2, 0xa

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Lcom/pulse/live/ui/MainActivity;->t(I)V

    .line 63
    .line 64
    .line 65
    iget-boolean v2, p0, Lcom/pulse/live/ui/MainActivity;->E:Z

    .line 66
    .line 67
    if-eqz v2, :cond_6

    .line 68
    .line 69
    iget-object v2, p0, Lcom/pulse/live/ui/MainActivity;->z:Landroid/widget/TextView;

    .line 70
    .line 71
    if-eqz v2, :cond_5

    .line 72
    .line 73
    sget v0, Lwv;->status_securing:I

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_5
    invoke-static {v0}, Lnm;->T(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v1

    .line 87
    :cond_6
    :goto_2
    :try_start_1
    invoke-static {p0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    iget-object v1, p0, Lcom/pulse/live/ui/MainActivity;->K:Le2;

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Le2;->c0(Landroid/content/Intent;)V

    .line 96
    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_7
    invoke-virtual {p0}, Lcom/pulse/live/ui/MainActivity;->u()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_5

    .line 103
    :catch_0
    invoke-virtual {p0}, Lcom/pulse/live/ui/MainActivity;->u()V

    .line 104
    .line 105
    .line 106
    goto :goto_5

    .line 107
    :catch_1
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-nez v2, :cond_a

    .line 116
    .line 117
    const/16 v2, 0x14

    .line 118
    .line 119
    invoke-virtual {p0, v2}, Lcom/pulse/live/ui/MainActivity;->t(I)V

    .line 120
    .line 121
    .line 122
    iget-boolean v2, p0, Lcom/pulse/live/ui/MainActivity;->E:Z

    .line 123
    .line 124
    if-eqz v2, :cond_9

    .line 125
    .line 126
    iget-object v2, p0, Lcom/pulse/live/ui/MainActivity;->z:Landroid/widget/TextView;

    .line 127
    .line 128
    if-eqz v2, :cond_8

    .line 129
    .line 130
    sget v0, Lwv;->status_configuring:I

    .line 131
    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_8
    invoke-static {v0}, Lnm;->T(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v1

    .line 144
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/pulse/live/ui/MainActivity;->z()V

    .line 145
    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_a
    iput-boolean v4, p0, Lcom/pulse/live/ui/MainActivity;->D:Z

    .line 149
    .line 150
    new-instance v0, Lup;

    .line 151
    .line 152
    invoke-direct {v0, p0, v1}, Lup;-><init>(Lcom/pulse/live/ui/MainActivity;Lmc;)V

    .line 153
    .line 154
    .line 155
    iget-object p0, p0, Lcom/pulse/live/ui/MainActivity;->C:Lkc;

    .line 156
    .line 157
    invoke-static {p0, v0}, Lvd;->C(Lhd;Ltk;)Lz00;

    .line 158
    .line 159
    .line 160
    :goto_5
    return-void
.end method

.method public final v(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x21

    .line 12
    .line 13
    if-lt v0, v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {}, Lf0;->a()Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p0, p1, v0}, Lf0;->i(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :goto_0
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :catch_0
    :goto_1
    return v1
.end method

.method public final w(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/pulse/live/ui/MainActivity;->G:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/pulse/live/ui/MainActivity;->G:Z

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/high16 p1, 0x14000000

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const/high16 v2, 0x10000000

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_2

    .line 61
    .line 62
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 67
    .line 68
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 69
    .line 70
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iput-boolean v0, p0, Lcom/pulse/live/ui/MainActivity;->G:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    :try_start_2
    iput-boolean v0, p0, Lcom/pulse/live/ui/MainActivity;->G:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_1
    iput-boolean v0, p0, Lcom/pulse/live/ui/MainActivity;->G:Z

    .line 86
    .line 87
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/pulse/live/ui/MainActivity;->F:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/pulse/live/ui/MainActivity;->F:Z

    .line 9
    .line 10
    const-class v1, Landroid/app/AppOpsManager;

    .line 11
    .line 12
    const-class v2, Ljava/lang/String;

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const-string v5, "setInstallerPackageName"

    .line 23
    .line 24
    filled-new-array {v2, v2}, [Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 33
    .line 34
    .line 35
    const-string v5, "com.android.vending"

    .line 36
    .line 37
    filled-new-array {p1, v5}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v3

    .line 46
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    :goto_0
    const/4 v3, 0x0

    .line 50
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    check-cast v5, Landroid/app/AppOpsManager;

    .line 68
    .line 69
    const-string v6, "setMode"

    .line 70
    .line 71
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 72
    .line 73
    filled-new-array {v7, v7, v2, v7}, [Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v6, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 82
    .line 83
    .line 84
    const/16 v0, 0x89

    .line 85
    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    filled-new-array {v0, v2, p1, v4}, [Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v1, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catch_1
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    :goto_1
    const-string v0, "app_state"

    .line 111
    .line 112
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    const-string v1, "target_pkg"

    .line 121
    .line 122
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    .line 128
    .line 129
    iget-boolean p1, p0, Lcom/pulse/live/ui/MainActivity;->E:Z

    .line 130
    .line 131
    if-eqz p1, :cond_2

    .line 132
    .line 133
    const/16 p1, 0x41

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lcom/pulse/live/ui/MainActivity;->t(I)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/pulse/live/ui/MainActivity;->z:Landroid/widget/TextView;

    .line 139
    .line 140
    if-eqz p1, :cond_1

    .line 141
    .line 142
    sget v0, Lwv;->status_installing_extra:I

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_1
    const-string p0, "statusText"

    .line 153
    .line 154
    invoke-static {p0}, Lnm;->T(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const/4 p0, 0x0

    .line 158
    throw p0

    .line 159
    :cond_2
    :goto_2
    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/pulse/live/ui/MainActivity;->G:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/pulse/live/ui/MainActivity;->C()V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/pulse/live/ui/MainActivity;->E:Z

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x64

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/pulse/live/ui/MainActivity;->t(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/pulse/live/ui/MainActivity;->z:Landroid/widget/TextView;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget v1, Lwv;->status_complete:I

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string p0, "statusText"

    .line 33
    .line 34
    invoke-static {p0}, Lnm;->T(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    throw p0

    .line 39
    :cond_2
    :goto_0
    new-instance v0, Llp;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, p0, p1, v1}, Llp;-><init>(Lcom/pulse/live/ui/MainActivity;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    const-wide/16 v1, 0xc8

    .line 46
    .line 47
    iget-object p0, p0, Lcom/pulse/live/ui/MainActivity;->B:Landroid/os/Handler;

    .line 48
    .line 49
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final z()V
    .locals 5

    .line 1
    const-string v0, "package:"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/pulse/live/ui/MainActivity;->J:Lz00;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1, v2}, Lsm;->g(Ljava/util/concurrent/CancellationException;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 12
    .line 13
    const-string v3, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    .line 14
    .line 15
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    const/16 v0, 0x3e9

    .line 42
    .line 43
    invoke-virtual {p0, v1, v0}, Ldb;->startActivityForResult(Landroid/content/Intent;I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/pulse/live/ui/MainActivity;->C:Lkc;

    .line 47
    .line 48
    new-instance v1, Lqp;

    .line 49
    .line 50
    invoke-direct {v1, p0, v2}, Lqp;-><init>(Lcom/pulse/live/ui/MainActivity;Lmc;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Lvd;->C(Lhd;Ltk;)Lz00;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/pulse/live/ui/MainActivity;->J:Lz00;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    return-void

    .line 60
    :catch_0
    invoke-virtual {p0}, Lcom/pulse/live/ui/MainActivity;->u()V

    .line 61
    .line 62
    .line 63
    return-void
.end method
