.class public final synthetic Lb2;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

# interfaces
.implements Lqn;


# instance fields
.field public final synthetic a:Lbb;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lkg;

.field public final synthetic d:La2;


# direct methods
.method public synthetic constructor <init>(Lbb;Ljava/lang/String;Lkg;La2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb2;->a:Lbb;

    .line 5
    .line 6
    iput-object p2, p0, Lb2;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lb2;->c:Lkg;

    .line 9
    .line 10
    iput-object p4, p0, Lb2;->d:La2;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lrn;Lon;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lb2;->a:Lbb;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lbb;->g:Landroid/os/Bundle;

    .line 7
    .line 8
    iget-object v1, p1, Lbb;->e:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    iget-object v2, p1, Lbb;->f:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    sget-object v3, Lon;->ON_START:Lon;

    .line 13
    .line 14
    iget-object v4, p0, Lb2;->b:Ljava/lang/String;

    .line 15
    .line 16
    if-ne v3, p2, :cond_1

    .line 17
    .line 18
    new-instance p1, Lc2;

    .line 19
    .line 20
    iget-object p2, p0, Lb2;->c:Lkg;

    .line 21
    .line 22
    iget-object p0, p0, Lb2;->d:La2;

    .line 23
    .line 24
    invoke-direct {p1, p2, p0}, Lc2;-><init>(Ly1;Lvd;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p0}, Lkg;->a(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-static {v0, v4}, Lnm;->A(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lx1;

    .line 51
    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget p1, p0, Lx1;->a:I

    .line 58
    .line 59
    iget-object p0, p0, Lx1;->b:Landroid/content/Intent;

    .line 60
    .line 61
    new-instance v0, Lx1;

    .line 62
    .line 63
    invoke-direct {v0, p0, p1}, Lx1;-><init>(Landroid/content/Intent;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v0}, Lkg;->a(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    sget-object p0, Lon;->ON_STOP:Lon;

    .line 71
    .line 72
    if-ne p0, p2, :cond_2

    .line 73
    .line 74
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    sget-object p0, Lon;->ON_DESTROY:Lon;

    .line 79
    .line 80
    if-ne p0, p2, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1, v4}, Lbb;->e(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    return-void
.end method
