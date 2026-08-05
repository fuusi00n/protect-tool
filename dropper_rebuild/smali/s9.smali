.class public final Ls9;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Lr9;

.field public static final b:Ljava/util/Map;

.field public final a:Ljava/lang/Class;

.method static constructor <clinit>()V
    .locals 24

    .line 1
    const-class v22, Lrk;

    .line 2
    .line 3
    const-class v23, Lsk;

    .line 4
    .line 5
    const-class v1, Lek;

    .line 6
    .line 7
    const-class v2, Lpk;

    .line 8
    .line 9
    const-class v3, Ltk;

    .line 10
    .line 11
    const-class v4, Luk;

    .line 12
    .line 13
    const-class v5, Lck;

    .line 14
    .line 15
    const-class v6, Lvk;

    .line 16
    .line 17
    const-class v7, Lo80;

    .line 18
    .line 19
    const-class v8, Lwk;

    .line 20
    .line 21
    const-class v9, Lxk;

    .line 22
    .line 23
    const-class v10, Lyk;

    .line 24
    .line 25
    const-class v11, Lfk;

    .line 26
    .line 27
    const-class v12, Lgk;

    .line 28
    .line 29
    const-class v13, Lhk;

    .line 30
    .line 31
    const-class v14, Lik;

    .line 32
    .line 33
    const-class v15, Ljk;

    .line 34
    .line 35
    const-class v16, Lkk;

    .line 36
    .line 37
    const-class v17, Llk;

    .line 38
    .line 39
    const-class v18, Lmk;

    .line 40
    .line 41
    const-class v19, Lnk;

    .line 42
    .line 43
    const-class v20, Lok;

    .line 44
    .line 45
    const-class v21, Lqk;

    .line 46
    .line 47
    filled-new-array/range {v1 .. v23}, [Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lca;->c0([Ljava/lang/Object;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v2, 0x0

    .line 69
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    add-int/lit8 v4, v2, 0x1

    .line 80
    .line 81
    if-ltz v2, :cond_0

    .line 82
    .line 83
    check-cast v3, Ljava/lang/Class;

    .line 84
    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    new-instance v5, Lut;

    .line 90
    .line 91
    invoke-direct {v5, v3, v2}, Lut;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move v2, v4

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 100
    .line 101
    const-string v1, "Index overflow has happened."

    .line 102
    .line 103
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_1
    invoke-static {v1}, Lcq;->d0(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sput-object v0, Ls9;->b:Ljava/util/Map;

    .line 112
    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls9;->a:Ljava/lang/Class;

    .line 5
    .line 6
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ls9;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lvd;->t(Ls9;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p1, Ls9;

    .line 10
    .line 11
    invoke-static {p1}, Lvd;->t(Ls9;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    invoke-static {p0}, Lvd;->t(Ls9;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ls9;->a:Ljava/lang/Class;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p0, " (Kotlin reflection is not available)"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
