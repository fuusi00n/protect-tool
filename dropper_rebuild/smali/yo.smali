.class public Lyo;
.super Le60;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public static final c:Lsj;

.field public final b:Lo00;

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lsj;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lsj;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lyo;->c:Lsj;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le60;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lo00;

    .line 5
    .line 6
    invoke-direct {v0}, Lo00;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lyo;->b:Lo00;

    .line 10
    .line 11
    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object p0, p0, Lyo;->b:Lo00;

    .line 2
    .line 3
    iget v0, p0, Lo00;->c:I

    .line 4
    .line 5
    iget-object v1, p0, Lo00;->b:[Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-gtz v0, :cond_1

    .line 9
    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v3, v0, :cond_0

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v4, v1, v3

    .line 15
    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput v2, p0, Lo00;->c:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    aget-object p0, v1, v2

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lg9;->a()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
