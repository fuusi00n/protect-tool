.class public final Lfl;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Ljava/util/Iterator;
.implements Ldn;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lgl;


# direct methods
.method public constructor <init>(Lgl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfl;->c:Lgl;

    .line 5
    .line 6
    const/4 p1, -0x2

    .line 7
    iput p1, p0, Lfl;->b:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Lfl;->b:I

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lkw;->a:Lq;

    .line 7
    .line 8
    sget-object v0, Lkw;->a:Lq;

    .line 9
    .line 10
    invoke-virtual {v0}, Lq;->a()Ljava/util/Random;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/high16 v1, 0x7fff0000

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/high16 v1, 0x10000

    .line 21
    .line 22
    add-int/2addr v0, v1

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lfl;->c:Lgl;

    .line 29
    .line 30
    iget-object v0, v0, Lgl;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Les;

    .line 33
    .line 34
    iget-object v1, p0, Lfl;->a:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Les;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    iput-object v0, p0, Lfl;->a:Ljava/lang/Object;

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lfl;->b:I

    .line 47
    .line 48
    return-void
.end method

.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lfl;->b:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lfl;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget p0, p0, Lfl;->b:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-ne p0, v0, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lfl;->b:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lfl;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lfl;->b:I

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lfl;->a:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    iput v1, p0, Lfl;->b:I

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Operation is not supported for read-only collection"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method
