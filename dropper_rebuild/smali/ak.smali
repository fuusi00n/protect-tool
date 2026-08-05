.class public final Lak;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public a:I

.field public b:Laj;

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Lpn;

.field public i:Lpn;

.method public constructor <init>(ILaj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lak;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lak;->b:Laj;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lak;->c:Z

    .line 10
    .line 11
    sget-object p1, Lpn;->e:Lpn;

    .line 12
    .line 13
    iput-object p1, p0, Lak;->h:Lpn;

    .line 14
    .line 15
    iput-object p1, p0, Lak;->i:Lpn;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(ILaj;I)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lak;->a:I

    .line 20
    iput-object p2, p0, Lak;->b:Laj;

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lak;->c:Z

    .line 22
    sget-object p1, Lpn;->e:Lpn;

    iput-object p1, p0, Lak;->h:Lpn;

    .line 23
    iput-object p1, p0, Lak;->i:Lpn;

    return-void
.end method
