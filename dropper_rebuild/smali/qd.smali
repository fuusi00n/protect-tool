.class public final Lqd;
.super Lwq;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"


# instance fields
.field public final q:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lqd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lwq;-><init>(Lwq;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lqd;->q:Landroid/graphics/RectF;

    .line 5
    .line 6
    iput-object p1, p0, Lqd;->q:Landroid/graphics/RectF;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lqz;Landroid/graphics/RectF;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lwq;-><init>(Lqz;)V

    .line 10
    iput-object p2, p0, Lqd;->q:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    new-instance v0, Lrd;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lxq;-><init>(Lwq;)V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lrd;->x:Lqd;

    .line 7
    .line 8
    invoke-virtual {v0}, Lxq;->invalidateSelf()V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
