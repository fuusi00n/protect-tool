.class public abstract Le40;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public static final a:Lzt;

.field public static final b:Lkp;

.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lh40;

    .line 8
    .line 9
    invoke-direct {v0}, Lzt;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Le40;->a:Lzt;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v1, 0x1c

    .line 16
    .line 17
    if-lt v0, v1, :cond_1

    .line 18
    .line 19
    new-instance v0, Lg40;

    .line 20
    .line 21
    invoke-direct {v0}, Lf40;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Le40;->a:Lzt;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Lf40;

    .line 28
    .line 29
    invoke-direct {v0}, Lf40;-><init>()V

    .line 30
    .line 31
    .line 32
    sput-object v0, Le40;->a:Lzt;

    .line 33
    .line 34
    :goto_0
    new-instance v0, Lkp;

    .line 35
    .line 36
    const/16 v1, 0x10

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lkp;-><init>(I)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Le40;->b:Lkp;

    .line 42
    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;Loi;Landroid/content/res/Resources;ILjava/lang/String;IILyt;Z)Landroid/graphics/Typeface;
    .locals 14

    move/from16 v4, p6

    move-object/from16 v1, p7

    .line 1
    instance-of v2, p1, Lri;

    const/4 v3, 0x5

    const/4 v6, -0x3

    if-eqz v2, :cond_d

    .line 2
    move-object v0, p1

    check-cast v0, Lri;

    .line 3
    iget-object v2, v0, Lri;->d:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v2, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 6
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v5, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2, v5}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, v7

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    .line 8
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 9
    new-instance v0, Lp3;

    invoke-direct {v0, v1, v3, v2}, Lp3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-object v2

    :cond_3
    const/4 v9, 0x1

    if-eqz p8, :cond_5

    .line 10
    iget v2, v0, Lri;->c:I

    if-nez v2, :cond_4

    :goto_2
    move v2, v9

    goto :goto_3

    :cond_4
    move v2, v8

    goto :goto_3

    :cond_5
    if-nez v1, :cond_4

    goto :goto_2

    :goto_3
    const/4 v5, -0x1

    if-eqz p8, :cond_6

    .line 11
    iget v10, v0, Lri;->b:I

    goto :goto_4

    :cond_6
    move v10, v5

    .line 12
    :goto_4
    new-instance v11, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    new-instance v12, Lo0;

    const/16 v13, 0x1a

    .line 14
    invoke-direct {v12, v13}, Lo0;-><init>(I)V

    .line 15
    iput-object v1, v12, Lo0;->b:Ljava/lang/Object;

    .line 16
    iget-object v0, v0, Lri;->a:Lh2;

    .line 17
    new-instance v13, Ls4;

    invoke-direct {v13, v12, v3, v11}, Ls4;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v1, 0x4

    if-eqz v2, :cond_9

    .line 18
    sget-object v2, Lmi;->a:Lkp;

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    iget-object v3, v0, Lh2;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22
    sget-object v3, Lmi;->a:Lkp;

    invoke-virtual {v3, v2}, Lkp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    if-eqz v3, :cond_7

    .line 23
    new-instance p0, Lj1;

    invoke-direct {p0, v12, v3, v1, v8}, Lj1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v11, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v7, v3

    goto/16 :goto_8

    :cond_7
    if-ne v10, v5, :cond_8

    .line 24
    invoke-static {v2, p0, v0, v4}, Lmi;->a(Ljava/lang/String;Landroid/content/Context;Lh2;I)Lli;

    move-result-object p0

    .line 25
    invoke-virtual {v13, p0}, Ls4;->D(Lli;)V

    .line 26
    iget-object v7, p0, Lli;->a:Landroid/graphics/Typeface;

    goto/16 :goto_8

    :cond_8
    move-object v3, v0

    .line 27
    new-instance v0, Lji;

    const/4 v5, 0x0

    move-object v1, v2

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lji;-><init>(Ljava/lang/String;Landroid/content/Context;Lh2;II)V

    .line 28
    :try_start_0
    sget-object p0, Lmi;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 29
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    int-to-long v0, v10

    .line 30
    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    .line 31
    :try_start_2
    check-cast p0, Lli;

    .line 32
    invoke-virtual {v13, p0}, Ls4;->D(Lli;)V

    .line 33
    iget-object v7, p0, Lli;->a:Landroid/graphics/Typeface;

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_6

    .line 34
    :catch_2
    new-instance p0, Ljava/lang/InterruptedException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :goto_5
    throw p0

    .line 36
    :goto_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 37
    :catch_3
    iget-object p0, v13, Ls4;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    .line 38
    iget-object v0, v13, Ls4;->b:Ljava/lang/Object;

    check-cast v0, Lo0;

    .line 39
    new-instance v1, La8;

    invoke-direct {v1, v0, v6, v8}, La8;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8

    :cond_9
    move-object v3, v0

    .line 40
    sget-object v0, Lmi;->a:Lkp;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    iget-object v2, v3, Lh2;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    sget-object v2, Lmi;->a:Lkp;

    invoke-virtual {v2, v0}, Lkp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    if-eqz v2, :cond_a

    .line 45
    new-instance p0, Lj1;

    invoke-direct {p0, v12, v2, v1, v8}, Lj1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v11, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v7, v2

    goto :goto_8

    .line 46
    :cond_a
    new-instance v1, Lki;

    invoke-direct {v1, v8, v13}, Lki;-><init>(ILjava/lang/Object;)V

    .line 47
    sget-object v2, Lmi;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 48
    :try_start_3
    sget-object v5, Lmi;->d:Lg00;

    .line 49
    invoke-virtual {v5, v0, v7}, Lg00;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 50
    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_b

    .line 51
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    monitor-exit v2

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_9

    .line 53
    :cond_b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v5, v0, v6}, Lg00;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v0

    .line 57
    new-instance v0, Lji;

    const/4 v5, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lji;-><init>(Ljava/lang/String;Landroid/content/Context;Lh2;II)V

    .line 58
    sget-object p0, Lmi;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 59
    new-instance v2, Lki;

    invoke-direct {v2, v9, v1}, Lki;-><init>(ILjava/lang/Object;)V

    .line 60
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_c

    .line 61
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_7

    .line 62
    :cond_c
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 63
    :goto_7
    new-instance v3, Lxx;

    .line 64
    invoke-direct {v3}, Lxx;-><init>()V

    .line 65
    iput-object v0, v3, Lxx;->b:Ljava/lang/Object;

    .line 66
    iput-object v2, v3, Lxx;->c:Ljava/lang/Object;

    .line 67
    iput-object v1, v3, Lxx;->d:Ljava/lang/Object;

    .line 68
    invoke-virtual {p0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_8
    move-object p0, v7

    move-object/from16 v7, p2

    goto :goto_a

    .line 69
    :goto_9
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    .line 70
    :cond_d
    sget-object v2, Le40;->a:Lzt;

    move-object v0, p1

    check-cast v0, Lpi;

    move-object/from16 v7, p2

    invoke-virtual {v2, p0, v0, v7, v4}, Lzt;->d(Landroid/content/Context;Lpi;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz v1, :cond_f

    if-eqz p0, :cond_e

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    new-instance v2, Lp3;

    invoke-direct {v2, v1, v3, p0}, Lp3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    .line 73
    :cond_e
    invoke-virtual {v1, v6}, Lyt;->a(I)V

    :cond_f
    :goto_a
    if-eqz p0, :cond_10

    .line 74
    sget-object v0, Le40;->b:Lkp;

    invoke-static/range {p2 .. p6}, Le40;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lkp;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object p0
.end method

.method public static b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x2d

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
