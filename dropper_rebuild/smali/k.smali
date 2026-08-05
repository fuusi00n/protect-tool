.class public final Lk;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public static final d:Lk;

.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/Executor;

.field public c:Lk;

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lk;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, Lk;-><init>(Ljava/lang/Runnable;Lhf;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lk;->d:Lk;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lhf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk;->a:Ljava/lang/Runnable;

    .line 5
    .line 6
    iput-object p2, p0, Lk;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-void
.end method
