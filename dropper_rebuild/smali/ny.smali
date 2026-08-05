.class public final Lny;
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
    const/high16 p0, 0x40000000

    .line 11
    .line 12
    mul-float/2addr p3, p0

    .line 13
    mul-float/2addr p3, p2

    .line 14
    new-instance p2, Lwz;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {p2, v2, v2, p3, p3}, Lwz;-><init>(FFFF)V

    .line 18
    .line 19
    .line 20
    iput v0, p2, Lwz;->f:F

    .line 21
    .line 22
    iput v1, p2, Lwz;->g:F

    .line 23
    .line 24
    iget-object v1, p1, La00;->f:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    new-instance v1, Luz;

    .line 30
    .line 31
    invoke-direct {v1, p2}, Luz;-><init>(Lwz;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, La00;->a(F)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p1, La00;->g:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    const/high16 p2, 0x43870000

    .line 43
    .line 44
    iput p2, p1, La00;->d:F

    .line 45
    .line 46
    add-float p2, v2, p3

    .line 47
    .line 48
    const/high16 v0, 0x3f000000

    .line 49
    .line 50
    mul-float/2addr p2, v0

    .line 51
    sub-float/2addr p3, v2

    .line 52
    div-float/2addr p3, p0

    .line 53
    const-wide v0, 0x4070e00000000000L

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    double-to-float p0, v2

    .line 67
    mul-float/2addr p0, p3

    .line 68
    add-float/2addr p0, p2

    .line 69
    iput p0, p1, La00;->b:F

    .line 70
    .line 71
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    double-to-float p0, v0

    .line 80
    mul-float/2addr p3, p0

    .line 81
    add-float/2addr p3, p2

    .line 82
    iput p3, p1, La00;->c:F

    .line 83
    .line 84
    return-void
.end method
