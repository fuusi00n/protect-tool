.class public final Lct;
.super Lhn;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lpk;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Llt;


# direct methods
.method public synthetic constructor <init>(Llt;I)V
    .locals 0

    .line 1
    iput p2, p0, Lct;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lct;->c:Llt;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lhn;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lct;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lct;->c:Llt;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lx6;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Llt;->c:Lij;

    .line 15
    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    iget-object p0, p0, Llt;->b:Ll6;

    .line 19
    .line 20
    invoke-virtual {p0}, Ll6;->c()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    move-object v0, p1

    .line 39
    check-cast v0, Lij;

    .line 40
    .line 41
    iget-boolean v0, v0, Lij;->a:Z

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    move-object v1, p1

    .line 46
    :cond_1
    check-cast v1, Lij;

    .line 47
    .line 48
    :cond_2
    sget-object p0, Lqg;->j:Lqg;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_0
    check-cast p1, Lx6;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Llt;->b:Ll6;

    .line 57
    .line 58
    invoke-virtual {p1}, Ll6;->c()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :cond_3
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    move-object v2, v0

    .line 77
    check-cast v2, Lij;

    .line 78
    .line 79
    iget-boolean v2, v2, Lij;->a:Z

    .line 80
    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    move-object v1, v0

    .line 84
    :cond_4
    check-cast v1, Lij;

    .line 85
    .line 86
    iget-object p1, p0, Llt;->c:Lij;

    .line 87
    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    invoke-virtual {p0}, Llt;->a()V

    .line 91
    .line 92
    .line 93
    :cond_5
    iput-object v1, p0, Llt;->c:Lij;

    .line 94
    .line 95
    sget-object p0, Lqg;->j:Lqg;

    .line 96
    .line 97
    return-object p0

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
