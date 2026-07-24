.class public final Lc3;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# static fields
.field public static final a:Lc3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc3;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc3;->a:Lc3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(FFFI)Landroid/window/BackEvent;
    .locals 0

    .line 1
    new-instance p0, Landroid/window/BackEvent;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/window/BackEvent;-><init>(FFFI)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final b(Landroid/window/BackEvent;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final c(Landroid/window/BackEvent;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/window/BackEvent;->getSwipeEdge()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final d(Landroid/window/BackEvent;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final e(Landroid/window/BackEvent;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method
