.class public Lh80;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# static fields
.field public static final b:Lj80;


# instance fields
.field public final a:Lj80;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, La80;

    .line 8
    .line 9
    invoke-direct {v0}, La80;-><init>()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v1, 0x1d

    .line 14
    .line 15
    if-lt v0, v1, :cond_1

    .line 16
    .line 17
    new-instance v0, Lz70;

    .line 18
    .line 19
    invoke-direct {v0}, Lz70;-><init>()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Lx70;

    .line 24
    .line 25
    invoke-direct {v0}, Lx70;-><init>()V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0}, Lb80;->b()Lj80;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lj80;->a:Lh80;

    .line 33
    .line 34
    invoke-virtual {v0}, Lh80;->a()Lj80;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lj80;->a:Lh80;

    .line 39
    .line 40
    invoke-virtual {v0}, Lh80;->b()Lj80;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v0, v0, Lj80;->a:Lh80;

    .line 45
    .line 46
    invoke-virtual {v0}, Lh80;->c()Lj80;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lh80;->b:Lj80;

    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>(Lj80;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh80;->a:Lj80;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lj80;
    .locals 0

    .line 1
    iget-object p0, p0, Lh80;->a:Lj80;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Lj80;
    .locals 0

    .line 1
    iget-object p0, p0, Lh80;->a:Lj80;

    .line 2
    .line 3
    return-object p0
.end method

.method public c()Lj80;
    .locals 0

    .line 1
    iget-object p0, p0, Lh80;->a:Lj80;

    .line 2
    .line 3
    return-object p0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public e()Lof;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lh80;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lh80;

    .line 12
    .line 13
    invoke-virtual {p0}, Lh80;->n()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Lh80;->n()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ne v1, v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Lh80;->m()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, Lh80;->m()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne v1, v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lh80;->j()Lhm;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lh80;->j()Lhm;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Lh80;->h()Lhm;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1}, Lh80;->h()Lhm;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Lh80;->e()Lof;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p1}, Lh80;->e()Lof;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_2

    .line 74
    .line 75
    return v0

    .line 76
    :cond_2
    return v2
.end method

.method public f(I)Lhm;
    .locals 0

    .line 1
    sget-object p0, Lhm;->e:Lhm;

    .line 2
    .line 3
    return-object p0
.end method

.method public g()Lhm;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lh80;->j()Lhm;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public h()Lhm;
    .locals 0

    .line 1
    sget-object p0, Lhm;->e:Lhm;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lh80;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lh80;->m()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lh80;->j()Lhm;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0}, Lh80;->h()Lhm;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p0}, Lh80;->e()Lof;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method public i()Lhm;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lh80;->j()Lhm;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public j()Lhm;
    .locals 0

    .line 1
    sget-object p0, Lhm;->e:Lhm;

    .line 2
    .line 3
    return-object p0
.end method

.method public k()Lhm;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lh80;->j()Lhm;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public l(IIII)Lj80;
    .locals 0

    .line 1
    sget-object p0, Lh80;->b:Lj80;

    .line 2
    .line 3
    return-object p0
.end method

.method public m()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public n()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public o([Lhm;)V
    .locals 0

    .line 1
    return-void
.end method

.method public p(Lj80;)V
    .locals 0

    .line 1
    return-void
.end method

.method public q(Lhm;)V
    .locals 0

    .line 1
    return-void
.end method
