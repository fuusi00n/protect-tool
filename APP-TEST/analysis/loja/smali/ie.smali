.class public final Lie;
.super Lrh;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# static fields
.field public static final d:Lie;


# instance fields
.field public c:Lgd;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lie;

    .line 2
    .line 3
    sget v2, Lb20;->c:I

    .line 4
    .line 5
    sget v3, Lb20;->d:I

    .line 6
    .line 7
    sget-wide v4, Lb20;->e:J

    .line 8
    .line 9
    sget-object v6, Lb20;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0}, Lcd;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lgd;

    .line 15
    .line 16
    invoke-direct/range {v1 .. v6}, Lgd;-><init>(IIJLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lie;->c:Lgd;

    .line 20
    .line 21
    sput-object v0, Lie;->d:Lie;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Dispatchers.Default cannot be closed"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final d(Lyc;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lie;->c:Lgd;

    .line 2
    .line 3
    const/4 p1, 0x6

    .line 4
    invoke-static {p0, p2, p1}, Lgd;->c(Lgd;Ljava/lang/Runnable;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Dispatchers.Default"

    .line 2
    .line 3
    return-object p0
.end method
