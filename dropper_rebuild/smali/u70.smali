.class public abstract Lu70;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public final a:I

.field public b:F

.field public final c:Landroid/view/animation/Interpolator;

.field public final d:J

.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lu70;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lu70;->c:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    iput-wide p3, p0, Lu70;->d:J

    .line 9
    .line 10
    return-void
.end method

.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lu70;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lu70;->b:F

    .line 2
    .line 3
    iget-object p0, p0, Lu70;->c:Landroid/view/animation/Interpolator;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    return v0
.end method

.method public c()I
    .locals 0

    .line 1
    iget p0, p0, Lu70;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public d(F)V
    .locals 0

    .line 1
    iput p1, p0, Lu70;->b:F

    .line 2
    .line 3
    return-void
.end method
