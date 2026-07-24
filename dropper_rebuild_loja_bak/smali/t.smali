.class public final Lt;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# static fields
.field public static final d:Lt;


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/Executor;

.field public c:Lt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lt;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, Lt;-><init>(Lm;Lhf;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lt;->d:Lt;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lm;Lhf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt;->a:Ljava/lang/Runnable;

    .line 5
    .line 6
    iput-object p2, p0, Lt;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-void
.end method
