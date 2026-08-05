.class public final Lht;
.super Ljava/lang/Object;
.source "r8-map-id-a86625cdcb32a8fe400ec98e86bf11f4b713cc23eacbad547e5a79ad7d438f4a"

.implements Lqn;
.implements Le8;

.field public final a:Ltn;

.field public final b:Lij;

.field public c:Ljt;

.field public final synthetic d:Llt;

.method public constructor <init>(Llt;Ltn;Lij;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lht;->d:Llt;

    .line 8
    .line 9
    iput-object p2, p0, Lht;->a:Ltn;

    .line 10
    .line 11
    iput-object p3, p0, Lht;->b:Lij;

    .line 12
    .line 13
    invoke-virtual {p2, p0}, Ltn;->a(Lqn;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final a(Lrn;Lon;)V
    .locals 9

    .line 1
    sget-object p1, Lon;->ON_START:Lon;

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lht;->b:Lij;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lht;->d:Llt;

    .line 11
    .line 12
    iget-object p2, v2, Llt;->b:Ll6;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Ll6;->addLast(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    new-instance p2, Ljt;

    .line 18
    .line 19
    invoke-direct {p2, v2, p1}, Ljt;-><init>(Llt;Lij;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p1, Lij;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Llt;->d()V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lkt;

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x1

    .line 34
    const/4 v1, 0x0

    .line 35
    const-class v3, Llt;

    .line 36
    .line 37
    const-string v4, "updateEnabledCallbacks"

    .line 38
    .line 39
    const-string v5, "updateEnabledCallbacks()V"

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    invoke-direct/range {v0 .. v8}, Lkt;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p1, Lij;->c:Lek;

    .line 46
    .line 47
    iput-object p2, p0, Lht;->c:Ljt;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    sget-object p1, Lon;->ON_STOP:Lon;

    .line 51
    .line 52
    if-ne p2, p1, :cond_1

    .line 53
    .line 54
    iget-object p0, p0, Lht;->c:Ljt;

    .line 55
    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Ljt;->cancel()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    sget-object p1, Lon;->ON_DESTROY:Lon;

    .line 63
    .line 64
    if-ne p2, p1, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0}, Lht;->cancel()V

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lht;->a:Ltn;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ltn;->f(Lqn;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lht;->b:Lij;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, Lij;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lht;->c:Ljt;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Ljt;->cancel()V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lht;->c:Ljt;

    .line 25
    .line 26
    return-void
.end method
