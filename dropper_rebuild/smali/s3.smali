.class public abstract Ls3;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public static final a:Lq3;

.field public static final b:I

.field public static c:Lbp;

.field public static d:Lbp;

.field public static e:Ljava/lang/Boolean;

.field public static f:Z

.field public static final g:Lq6;

.field public static final h:Ljava/lang/Object;

.field public static final i:Ljava/lang/Object;

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lq3;

    .line 2
    .line 3
    new-instance v1, Lr3;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lq3;-><init>(Lr3;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Ls3;->a:Lq3;

    .line 12
    .line 13
    const/16 v0, -0x64

    .line 14
    .line 15
    sput v0, Ls3;->b:I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    sput-object v0, Ls3;->c:Lbp;

    .line 19
    .line 20
    sput-object v0, Ls3;->d:Lbp;

    .line 21
    .line 22
    sput-object v0, Ls3;->e:Ljava/lang/Boolean;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    sput-boolean v0, Ls3;->f:Z

    .line 26
    .line 27
    new-instance v1, Lq6;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v2, Lq6;->e:[I

    .line 33
    .line 34
    iput-object v2, v1, Lq6;->a:[I

    .line 35
    .line 36
    sget-object v2, Lq6;->f:[Ljava/lang/Object;

    .line 37
    .line 38
    iput-object v2, v1, Lq6;->b:[Ljava/lang/Object;

    .line 39
    .line 40
    iput v0, v1, Lq6;->c:I

    .line 41
    .line 42
    sput-object v1, Ls3;->g:Lq6;

    .line 43
    .line 44
    new-instance v0, Ljava/lang/Object;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    sput-object v0, Ls3;->h:Ljava/lang/Object;

    .line 50
    .line 51
    new-instance v0, Ljava/lang/Object;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    sput-object v0, Ls3;->i:Ljava/lang/Object;

    .line 57
    .line 58
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget-object v0, Ls3;->e:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    sget v0, Lf6;->a:I

    .line 6
    .line 7
    invoke-static {}, Le6;->a()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    or-int/lit16 v0, v0, 0x80

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Landroid/content/ComponentName;

    .line 18
    .line 19
    const-class v3, Lf6;

    .line 20
    .line 21
    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    const-string v0, "autoStoreLocales"

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sput-object p0, Ls3;->e:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    sput-object p0, Ls3;->e:Ljava/lang/Boolean;

    .line 48
    .line 49
    :cond_0
    :goto_0
    sget-object p0, Ls3;->e:Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    return p0
.end method

.method public static d(Lg4;)V
    .locals 4

    .line 1
    sget-object v0, Ls3;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ls3;->g:Lq6;

    .line 5
    .line 6
    invoke-virtual {v1}, Lq6;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    move-object v2, v1

    .line 11
    check-cast v2, Lyp;

    .line 12
    .line 13
    invoke-virtual {v2}, Lyp;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_2

    .line 18
    .line 19
    invoke-virtual {v2}, Lyp;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ls3;

    .line 30
    .line 31
    if-eq v3, p0, :cond_1

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v2}, Lyp;->remove()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract e(I)Z
.end method

.method public abstract f(I)V
.end method

.method public abstract g(Landroid/view/View;)V
.end method

.method public abstract i(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract j(Ljava/lang/CharSequence;)V
.end method
