.class public final Lpd;
.super Lnm;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.method public final x(La00;FF)V
    .locals 4

    .line 1
    mul-float p0, p3, p2

    .line 2
    .line 3
    const/high16 v0, 0x43340000

    .line 4
    .line 5
    const/high16 v1, 0x42b40000

    .line 6
    .line 7
    invoke-virtual {p1, p0, v0, v1}, La00;->d(FFF)V

    .line 8
    .line 9
    .line 10
    const-wide v0, 0x4056800000000000L

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    float-to-double v2, p3

    .line 24
    mul-double/2addr v0, v2

    .line 25
    float-to-double p2, p2

    .line 26
    mul-double/2addr v0, p2

    .line 27
    double-to-float p0, v0

    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    mul-double/2addr v0, v2

    .line 39
    mul-double/2addr v0, p2

    .line 40
    double-to-float p2, v0

    .line 41
    invoke-virtual {p1, p0, p2}, La00;->c(FF)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
