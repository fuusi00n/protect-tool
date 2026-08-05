.class public final Lwz;
.super Lyz;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.field public static final h:Landroid/graphics/RectF;

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public f:F

.field public g:F

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lwz;->h:Landroid/graphics/RectF;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyz;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lwz;->b:F

    .line 5
    .line 6
    iput p2, p0, Lwz;->c:F

    .line 7
    .line 8
    iput p3, p0, Lwz;->d:F

    .line 9
    .line 10
    iput p4, p0, Lwz;->e:F

    .line 11
    .line 12
    return-void
.end method

.method public final a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lyz;->a:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lwz;->d:F

    .line 10
    .line 11
    iget v1, p0, Lwz;->e:F

    .line 12
    .line 13
    sget-object v2, Lwz;->h:Landroid/graphics/RectF;

    .line 14
    .line 15
    iget v3, p0, Lwz;->b:F

    .line 16
    .line 17
    iget v4, p0, Lwz;->c:F

    .line 18
    .line 19
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lwz;->f:F

    .line 23
    .line 24
    iget p0, p0, Lwz;->g:F

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p2, v2, v0, p0, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
