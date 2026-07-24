.class public final Lcz;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public final a:Ldz;

.field public final b:Lm3;

.field public c:Z


# direct methods
.method public constructor <init>(Ldz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcz;->a:Ldz;

    .line 5
    .line 6
    new-instance p1, Lm3;

    .line 7
    .line 8
    invoke-direct {p1}, Lm3;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcz;->b:Lm3;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcz;->a:Ldz;

    .line 2
    .line 3
    invoke-interface {v0}, Lrn;->e()Ltn;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v1, Ltn;->c:Lpn;

    .line 8
    .line 9
    sget-object v3, Lpn;->b:Lpn;

    .line 10
    .line 11
    if-ne v2, v3, :cond_1

    .line 12
    .line 13
    new-instance v2, Llw;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v2, v3, v0}, Llw;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ltn;->a(Lqn;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcz;->b:Lm3;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-boolean v2, v0, Lm3;->c:Z

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    new-instance v2, Lta;

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    invoke-direct {v2, v3, v0}, Lta;-><init>(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ltn;->a(Lqn;)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    iput-boolean v1, v0, Lm3;->c:Z

    .line 42
    .line 43
    iput-boolean v1, p0, Lcz;->c:Z

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    const-string p0, "SavedStateRegistry was already attached."

    .line 47
    .line 48
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    const-string p0, "Restarter must be created only during owner\'s initialization stage"

    .line 53
    .line 54
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcz;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcz;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcz;->a:Ldz;

    .line 9
    .line 10
    invoke-interface {v0}, Lrn;->e()Ltn;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, v0, Ltn;->c:Lpn;

    .line 15
    .line 16
    sget-object v2, Lpn;->d:Lpn;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-gez v1, :cond_4

    .line 23
    .line 24
    iget-object p0, p0, Lcz;->b:Lm3;

    .line 25
    .line 26
    iget-boolean v0, p0, Lm3;->c:Z

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-boolean v0, p0, Lm3;->d:Z

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p1, 0x0

    .line 44
    :goto_0
    iput-object p1, p0, Lm3;->a:Landroid/os/Parcelable;

    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lm3;->d:Z

    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    const-string p0, "SavedStateRegistry was already restored."

    .line 51
    .line 52
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_3
    const-string p0, "You must call performAttach() before calling performRestore(Bundle)."

    .line 57
    .line 58
    invoke-static {p0}, Lg9;->k(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_4
    iget-object p0, v0, Ltn;->c:Lpn;

    .line 63
    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v0, "performRestore cannot be called when owner is "

    .line 67
    .line 68
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcz;->b:Lm3;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lm3;->a:Landroid/os/Parcelable;

    .line 12
    .line 13
    check-cast v1, Landroid/os/Bundle;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lm3;->f:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Luy;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v1, Lsy;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lsy;-><init>(Luy;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Luy;->c:Ljava/util/WeakHashMap;

    .line 33
    .line 34
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {p0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {v1}, Lsy;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1}, Lsy;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Ljava/util/Map$Entry;

    .line 50
    .line 51
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lbz;

    .line 62
    .line 63
    invoke-interface {p0}, Lbz;->a()Landroid/os/Bundle;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_2

    .line 76
    .line 77
    const-string p0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 78
    .line 79
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    return-void
.end method
