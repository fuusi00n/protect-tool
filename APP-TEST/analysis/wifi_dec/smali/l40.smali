.class public final Ll40;
.super Lcd;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# static fields
.field public static final c:Ll40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll40;

    .line 2
    .line 3
    invoke-direct {v0}, Lcd;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ll40;->c:Ll40;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lyc;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object p0, Lie;->d:Lie;

    .line 2
    .line 3
    sget-object p1, Lb20;->h:Lz10;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iget-object p0, p0, Lie;->c:Lgd;

    .line 7
    .line 8
    invoke-virtual {p0, p2, p1, v0}, Lgd;->b(Ljava/lang/Runnable;Lz10;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
