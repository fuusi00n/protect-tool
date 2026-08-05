.class public Lf40;
.super Lzt;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public static n:Ljava/lang/Class; = null

.field public static o:Ljava/lang/reflect/Constructor; = null

.field public static p:Ljava/lang/reflect/Method; = null

.field public static q:Ljava/lang/reflect/Method; = null

.field public static r:Z = false

.field public final g:Ljava/lang/Class;

.field public final h:Ljava/lang/reflect/Constructor;

.field public final i:Ljava/lang/reflect/Method;

.field public final j:Ljava/lang/reflect/Method;

.field public final k:Ljava/lang/reflect/Method;

.field public final l:Ljava/lang/reflect/Method;

.field public final m:Ljava/lang/reflect/Method;

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lzt;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    const-string v1, "android.graphics.FontFamily"

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v1}, Lf40;->D(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "addFontFromBuffer"

    .line 20
    .line 21
    const-class v5, Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    const-class v7, [Landroid/graphics/fonts/FontVariationAxis;

    .line 26
    .line 27
    filled-new-array {v5, v6, v7, v6, v6}, [Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v5, "freeze"

    .line 36
    .line 37
    invoke-virtual {v1, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const-string v6, "abortCreation"

    .line 42
    .line 43
    invoke-virtual {v1, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {p0, v1}, Lf40;->E(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    .line 49
    .line 50
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    move-object v8, v1

    .line 52
    move-object v1, v0

    .line 53
    move-object v0, v8

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-object v1, v0

    .line 56
    move-object v2, v1

    .line 57
    move-object v3, v2

    .line 58
    move-object v4, v3

    .line 59
    move-object v5, v4

    .line 60
    move-object v6, v5

    .line 61
    :goto_0
    iput-object v0, p0, Lf40;->g:Ljava/lang/Class;

    .line 62
    .line 63
    iput-object v2, p0, Lf40;->h:Ljava/lang/reflect/Constructor;

    .line 64
    .line 65
    iput-object v3, p0, Lf40;->i:Ljava/lang/reflect/Method;

    .line 66
    .line 67
    iput-object v4, p0, Lf40;->j:Ljava/lang/reflect/Method;

    .line 68
    .line 69
    iput-object v5, p0, Lf40;->k:Ljava/lang/reflect/Method;

    .line 70
    .line 71
    iput-object v6, p0, Lf40;->l:Ljava/lang/reflect/Method;

    .line 72
    .line 73
    iput-object v1, p0, Lf40;->m:Ljava/lang/reflect/Method;

    .line 74
    .line 75
    return-void
.end method

.method public static C()V
    .locals 8

    .line 1
    sget-boolean v0, Lf40;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lf40;->r:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    const-string v2, "android.graphics.FontFamily"

    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "addFontWeightStyle"

    .line 21
    .line 22
    const-class v5, Ljava/lang/String;

    .line 23
    .line 24
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 25
    .line 26
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    filled-new-array {v5, v6, v7}, [Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-class v5, Landroid/graphics/Typeface;

    .line 41
    .line 42
    const-string v6, "createFromFamiliesWithDefault"

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    .line 54
    .line 55
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    move-object v0, v1

    .line 57
    move-object v1, v3

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-object v0, v1

    .line 60
    move-object v2, v0

    .line 61
    move-object v4, v2

    .line 62
    :goto_0
    sput-object v1, Lf40;->o:Ljava/lang/reflect/Constructor;

    .line 63
    .line 64
    sput-object v2, Lf40;->n:Ljava/lang/Class;

    .line 65
    .line 66
    sput-object v4, Lf40;->p:Ljava/lang/reflect/Method;

    .line 67
    .line 68
    sput-object v0, Lf40;->q:Ljava/lang/reflect/Method;

    .line 69
    .line 70
    return-void
.end method

.method public static D(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8

    .line 1
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 2
    .line 3
    const-class v7, [Landroid/graphics/fonts/FontVariationAxis;

    .line 4
    .line 5
    const-class v0, Landroid/content/res/AssetManager;

    .line 6
    .line 7
    const-class v1, Ljava/lang/String;

    .line 8
    .line 9
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    move-object v4, v2

    .line 12
    move-object v5, v2

    .line 13
    move-object v6, v2

    .line 14
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "addFontFromAssetManager"

    .line 19
    .line 20
    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static z(Ljava/lang/Object;Ljava/lang/String;IZ)Z
    .locals 1

    .line 1
    invoke-static {}, Lf40;->C()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object v0, Lf40;->p:Ljava/lang/reflect/Method;

    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    return p0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    new-instance p1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public A(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iget-object v2, p0, Lf40;->g:Ljava/lang/Class;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v2, v3, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lf40;->m:Ljava/lang/reflect/Method;

    .line 19
    .line 20
    filled-new-array {v2, v0, v0}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    return-object p0

    .line 31
    :catch_0
    return-object v1
.end method

.method public final B(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lf40;->k:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return p0

    .line 15
    :catch_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public E(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    .line 1
    const/4 p0, 0x1

    .line 2
    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 11
    .line 12
    filled-new-array {p1, v0, v0}, [Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-class v0, Landroid/graphics/Typeface;

    .line 17
    .line 18
    const-string v1, "createFromFamiliesWithDefault"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 25
    .line 26
    .line 27
    return-object p1
.end method

.method public final d(Landroid/content/Context;Lpi;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 10

    .line 1
    iget-object p2, p2, Lpi;->a:[Lqi;

    .line 2
    .line 3
    iget-object p4, p0, Lf40;->i:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p4, :cond_4

    .line 8
    .line 9
    :try_start_0
    iget-object p3, p0, Lf40;->h:Ljava/lang/reflect/Constructor;

    .line 10
    .line 11
    invoke-virtual {p3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    move-object v4, p3

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-object v4, v1

    .line 18
    :goto_0
    if-nez v4, :cond_0

    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_0
    array-length p3, p2

    .line 22
    :goto_1
    if-ge v0, p3, :cond_2

    .line 23
    .line 24
    aget-object p4, p2, v0

    .line 25
    .line 26
    iget-object v5, p4, Lqi;->a:Ljava/lang/String;

    .line 27
    .line 28
    iget v6, p4, Lqi;->e:I

    .line 29
    .line 30
    iget v7, p4, Lqi;->b:I

    .line 31
    .line 32
    iget-boolean v8, p4, Lqi;->c:Z

    .line 33
    .line 34
    iget-object p4, p4, Lqi;->d:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p4}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    move-object v2, p0

    .line 41
    move-object v3, p1

    .line 42
    invoke-virtual/range {v2 .. v9}, Lf40;->y(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_1

    .line 47
    .line 48
    :try_start_1
    iget-object p0, v2, Lf40;->l:Ljava/lang/reflect/Method;

    .line 49
    .line 50
    invoke-virtual {p0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    move-object p0, v2

    .line 57
    move-object p1, v3

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move-object v2, p0

    .line 60
    invoke-virtual {v2, v4}, Lf40;->B(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_3

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    invoke-virtual {v2, v4}, Lf40;->A(Ljava/lang/Object;)Landroid/graphics/Typeface;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :cond_4
    move-object v3, p1

    .line 73
    invoke-static {}, Lf40;->C()V

    .line 74
    .line 75
    .line 76
    :try_start_2
    sget-object p0, Lf40;->o:Ljava/lang/reflect/Constructor;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    .line 82
    array-length p1, p2

    .line 83
    move p4, v0

    .line 84
    :goto_2
    if-ge p4, p1, :cond_8

    .line 85
    .line 86
    aget-object v2, p2, p4

    .line 87
    .line 88
    invoke-static {v3}, Lns;->n(Landroid/content/Context;)Ljava/io/File;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    if-nez v4, :cond_5

    .line 93
    .line 94
    :catch_1
    :goto_3
    return-object v1

    .line 95
    :cond_5
    :try_start_3
    iget v5, v2, Lqi;->f:I

    .line 96
    .line 97
    invoke-static {v4, p3, v5}, Lns;->i(Ljava/io/File;Landroid/content/res/Resources;I)Z

    .line 98
    .line 99
    .line 100
    move-result v5
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    if-nez v5, :cond_6

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 104
    .line 105
    .line 106
    return-object v1

    .line 107
    :cond_6
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    iget v6, v2, Lqi;->b:I

    .line 112
    .line 113
    iget-boolean v2, v2, Lqi;->c:Z

    .line 114
    .line 115
    invoke-static {p0, v5, v6, v2}, Lf40;->z(Ljava/lang/Object;Ljava/lang/String;IZ)Z

    .line 116
    .line 117
    .line 118
    move-result v2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    if-nez v2, :cond_7

    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 122
    .line 123
    .line 124
    return-object v1

    .line 125
    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 126
    .line 127
    .line 128
    add-int/lit8 p4, p4, 0x1

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    move-object p0, v0

    .line 133
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 134
    .line 135
    .line 136
    throw p0

    .line 137
    :catch_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 138
    .line 139
    .line 140
    return-object v1

    .line 141
    :cond_8
    invoke-static {}, Lf40;->C()V

    .line 142
    .line 143
    .line 144
    :try_start_5
    sget-object p1, Lf40;->n:Ljava/lang/Class;

    .line 145
    .line 146
    const/4 p2, 0x1

    .line 147
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {p1, v0, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    sget-object p0, Lf40;->q:Ljava/lang/reflect/Method;

    .line 155
    .line 156
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    check-cast p0, Landroid/graphics/Typeface;
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_3

    .line 165
    .line 166
    return-object p0

    .line 167
    :catch_3
    move-exception v0

    .line 168
    move-object p0, v0

    .line 169
    new-instance p1, Ljava/lang/RuntimeException;

    .line 170
    .line 171
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :catch_4
    move-exception v0

    .line 176
    move-object p0, v0

    .line 177
    new-instance p1, Ljava/lang/RuntimeException;

    .line 178
    .line 179
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 180
    .line 181
    .line 182
    throw p1
.end method

.method public final e(Landroid/content/Context;[Lsi;I)Landroid/graphics/Typeface;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move/from16 v3, p3

    .line 6
    .line 7
    array-length v0, v2

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    if-ge v0, v5, :cond_0

    .line 11
    .line 12
    goto/16 :goto_f

    .line 13
    .line 14
    :cond_0
    iget-object v0, v1, Lf40;->i:Ljava/lang/reflect/Method;

    .line 15
    .line 16
    const-string v6, "r"

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    if-eqz v0, :cond_d

    .line 20
    .line 21
    new-instance v8, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    array-length v9, v2

    .line 27
    move v10, v7

    .line 28
    :goto_0
    if-ge v10, v9, :cond_5

    .line 29
    .line 30
    aget-object v0, v2, v10

    .line 31
    .line 32
    iget v11, v0, Lsi;->e:I

    .line 33
    .line 34
    if-eqz v11, :cond_1

    .line 35
    .line 36
    goto :goto_5

    .line 37
    :cond_1
    iget-object v11, v0, Lsi;->a:Landroid/net/Uri;

    .line 38
    .line 39
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    goto :goto_5

    .line 46
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :try_start_0
    invoke-virtual {v0, v11, v6, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    if-nez v12, :cond_4

    .line 55
    .line 56
    if-eqz v12, :cond_3

    .line 57
    .line 58
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    :catch_0
    :cond_3
    move-object v0, v4

    .line 62
    goto :goto_4

    .line 63
    :cond_4
    :try_start_1
    new-instance v13, Ljava/io/FileInputStream;

    .line 64
    .line 65
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 73
    .line 74
    .line 75
    move-result-object v14

    .line 76
    invoke-virtual {v14}, Ljava/nio/channels/FileChannel;->size()J

    .line 77
    .line 78
    .line 79
    move-result-wide v18

    .line 80
    sget-object v15, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 81
    .line 82
    const-wide/16 v16, 0x0

    .line 83
    .line 84
    invoke-virtual/range {v14 .. v19}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 85
    .line 86
    .line 87
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    .line 90
    .line 91
    :try_start_4
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_4

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    move-object v13, v0

    .line 97
    goto :goto_2

    .line 98
    :catchall_1
    move-exception v0

    .line 99
    move-object v14, v0

    .line 100
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catchall_2
    move-exception v0

    .line 105
    :try_start_6
    invoke-virtual {v14, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    :goto_1
    throw v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 109
    :goto_2
    :try_start_7
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :catchall_3
    move-exception v0

    .line 114
    :try_start_8
    invoke-virtual {v13, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    :goto_3
    throw v13
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 118
    :goto_4
    invoke-virtual {v8, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    :goto_5
    add-int/lit8 v10, v10, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_5
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :try_start_9
    iget-object v6, v1, Lf40;->h:Ljava/lang/reflect/Constructor;

    .line 129
    .line 130
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v6
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_9} :catch_1

    .line 134
    goto :goto_6

    .line 135
    :catch_1
    move-object v6, v4

    .line 136
    :goto_6
    if-nez v6, :cond_6

    .line 137
    .line 138
    goto/16 :goto_f

    .line 139
    .line 140
    :cond_6
    array-length v8, v2

    .line 141
    move v9, v7

    .line 142
    move v10, v9

    .line 143
    :goto_7
    iget-object v11, v1, Lf40;->l:Ljava/lang/reflect/Method;

    .line 144
    .line 145
    if-ge v9, v8, :cond_9

    .line 146
    .line 147
    aget-object v12, v2, v9

    .line 148
    .line 149
    iget-object v13, v12, Lsi;->a:Landroid/net/Uri;

    .line 150
    .line 151
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    check-cast v13, Ljava/nio/ByteBuffer;

    .line 156
    .line 157
    if-nez v13, :cond_7

    .line 158
    .line 159
    goto :goto_9

    .line 160
    :cond_7
    iget v10, v12, Lsi;->b:I

    .line 161
    .line 162
    iget v14, v12, Lsi;->c:I

    .line 163
    .line 164
    iget-boolean v12, v12, Lsi;->d:Z

    .line 165
    .line 166
    :try_start_a
    iget-object v15, v1, Lf40;->j:Ljava/lang/reflect/Method;

    .line 167
    .line 168
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v14

    .line 176
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v12

    .line 180
    filled-new-array {v13, v10, v4, v14, v12}, [Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    invoke-virtual {v15, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v10

    .line 188
    check-cast v10, Ljava/lang/Boolean;

    .line 189
    .line 190
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 191
    .line 192
    .line 193
    move-result v10
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_a} :catch_2

    .line 194
    goto :goto_8

    .line 195
    :catch_2
    move v10, v7

    .line 196
    :goto_8
    if-nez v10, :cond_8

    .line 197
    .line 198
    :try_start_b
    invoke-virtual {v11, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    goto/16 :goto_f

    .line 202
    .line 203
    :cond_8
    move v10, v5

    .line 204
    :goto_9
    add-int/lit8 v9, v9, 0x1

    .line 205
    .line 206
    goto :goto_7

    .line 207
    :cond_9
    if-nez v10, :cond_a

    .line 208
    .line 209
    invoke-virtual {v11, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_b} :catch_3

    .line 210
    .line 211
    .line 212
    goto/16 :goto_f

    .line 213
    .line 214
    :cond_a
    invoke-virtual {v1, v6}, Lf40;->B(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-nez v0, :cond_b

    .line 219
    .line 220
    goto/16 :goto_f

    .line 221
    .line 222
    :cond_b
    invoke-virtual {v1, v6}, Lf40;->A(Ljava/lang/Object;)Landroid/graphics/Typeface;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    if-nez v0, :cond_c

    .line 227
    .line 228
    goto/16 :goto_f

    .line 229
    .line 230
    :cond_c
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    return-object v0

    .line 235
    :cond_d
    and-int/lit8 v0, v3, 0x1

    .line 236
    .line 237
    if-nez v0, :cond_e

    .line 238
    .line 239
    const/16 v0, 0x190

    .line 240
    .line 241
    goto :goto_a

    .line 242
    :cond_e
    const/16 v0, 0x2bc

    .line 243
    .line 244
    :goto_a
    and-int/lit8 v1, v3, 0x2

    .line 245
    .line 246
    if-eqz v1, :cond_f

    .line 247
    .line 248
    move v1, v5

    .line 249
    goto :goto_b

    .line 250
    :cond_f
    move v1, v7

    .line 251
    :goto_b
    array-length v3, v2

    .line 252
    const v8, 0x7fffffff

    .line 253
    .line 254
    .line 255
    move-object v10, v4

    .line 256
    move v9, v7

    .line 257
    :goto_c
    if-ge v9, v3, :cond_13

    .line 258
    .line 259
    aget-object v11, v2, v9

    .line 260
    .line 261
    iget v12, v11, Lsi;->c:I

    .line 262
    .line 263
    sub-int/2addr v12, v0

    .line 264
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    .line 265
    .line 266
    .line 267
    move-result v12

    .line 268
    mul-int/lit8 v12, v12, 0x2

    .line 269
    .line 270
    iget-boolean v13, v11, Lsi;->d:Z

    .line 271
    .line 272
    if-ne v13, v1, :cond_10

    .line 273
    .line 274
    move v13, v7

    .line 275
    goto :goto_d

    .line 276
    :cond_10
    move v13, v5

    .line 277
    :goto_d
    add-int/2addr v12, v13

    .line 278
    if-eqz v10, :cond_11

    .line 279
    .line 280
    if-le v8, v12, :cond_12

    .line 281
    .line 282
    :cond_11
    move-object v10, v11

    .line 283
    move v8, v12

    .line 284
    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 285
    .line 286
    goto :goto_c

    .line 287
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    :try_start_c
    iget-object v1, v10, Lsi;->a:Landroid/net/Uri;

    .line 292
    .line 293
    invoke-virtual {v0, v1, v6, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    if-nez v1, :cond_14

    .line 298
    .line 299
    if-eqz v1, :cond_15

    .line 300
    .line 301
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 302
    .line 303
    .line 304
    return-object v4

    .line 305
    :cond_14
    :try_start_d
    new-instance v0, Landroid/graphics/Typeface$Builder;

    .line 306
    .line 307
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-direct {v0, v2}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/FileDescriptor;)V

    .line 312
    .line 313
    .line 314
    iget v2, v10, Lsi;->c:I

    .line 315
    .line 316
    invoke-virtual {v0, v2}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    iget-boolean v2, v10, Lsi;->d:Z

    .line 321
    .line 322
    invoke-virtual {v0, v2}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    .line 327
    .line 328
    .line 329
    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 330
    :try_start_e
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 331
    .line 332
    .line 333
    return-object v0

    .line 334
    :catchall_4
    move-exception v0

    .line 335
    move-object v2, v0

    .line 336
    :try_start_f
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 337
    .line 338
    .line 339
    goto :goto_e

    .line 340
    :catchall_5
    move-exception v0

    .line 341
    :try_start_10
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 342
    .line 343
    .line 344
    :goto_e
    throw v2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    .line 345
    :catch_3
    :cond_15
    :goto_f
    return-object v4
.end method

.method public final f(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Typeface;
    .locals 10

    .line 1
    iget-object v0, p0, Lf40;->i:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    :try_start_0
    iget-object p2, p0, Lf40;->h:Ljava/lang/reflect/Constructor;

    .line 7
    .line 8
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    move-object v4, p2

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-object v4, v1

    .line 15
    :goto_0
    if-nez v4, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v8, -0x1

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, -0x1

    .line 22
    move-object v2, p0

    .line 23
    move-object v3, p1

    .line 24
    move-object v5, p4

    .line 25
    invoke-virtual/range {v2 .. v9}, Lf40;->y(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    :try_start_1
    iget-object p0, v2, Lf40;->l:Ljava/lang/reflect/Method;

    .line 32
    .line 33
    invoke-virtual {p0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v2, v4}, Lf40;->B(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {v2, v4}, Lf40;->A(Ljava/lang/Object;)Landroid/graphics/Typeface;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_3
    move-object v3, p1

    .line 50
    invoke-static {v3}, Lns;->n(Landroid/content/Context;)Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-nez p0, :cond_4

    .line 55
    .line 56
    :catch_1
    :goto_1
    return-object v1

    .line 57
    :cond_4
    :try_start_2
    invoke-static {p0, p2, p3}, Lns;->i(Ljava/io/File;Landroid/content/res/Resources;I)Z

    .line 58
    .line 59
    .line 60
    move-result p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    if-nez p1, :cond_5

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_5
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 72
    .line 73
    .line 74
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 76
    .line 77
    .line 78
    return-object p1

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    move-object p1, v0

    .line 81
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :catch_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 86
    .line 87
    .line 88
    return-object v1
.end method

.method public final y(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p0, p0, Lf40;->i:Ljava/lang/reflect/Method;

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    move-object v2, p3

    .line 27
    move-object/from16 v8, p7

    .line 28
    .line 29
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return p0

    .line 44
    :catch_0
    return v0
.end method
