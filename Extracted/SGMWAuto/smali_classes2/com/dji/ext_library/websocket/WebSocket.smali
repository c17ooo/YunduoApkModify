.class public interface abstract Lcom/dji/ext_library/websocket/WebSocket;
.super Ljava/lang/Object;
.source "WebSocket.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract close(I)V
.end method

.method public abstract close(ILjava/lang/String;)V
.end method

.method public abstract closeConnection(ILjava/lang/String;)V
.end method

.method public abstract getAttachment()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract getDraft()Lcom/dji/ext_library/websocket/drafts/Draft;
.end method

.method public abstract getLocalSocketAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getProtocol()Lcom/dji/ext_library/websocket/protocols/IProtocol;
.end method

.method public abstract getReadyState()Lcom/dji/ext_library/websocket/enums/ReadyState;
.end method

.method public abstract getRemoteSocketAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getResourceDescriptor()Ljava/lang/String;
.end method

.method public abstract getSSLSession()Ljavax/net/ssl/SSLSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract hasBufferedData()Z
.end method

.method public abstract hasSSLSupport()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isClosing()Z
.end method

.method public abstract isFlushAndClose()Z
.end method

.method public abstract isOpen()Z
.end method

.method public abstract send(Ljava/lang/String;)V
.end method

.method public abstract send(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract send([B)V
.end method

.method public abstract sendFragmentedFrame(Lcom/dji/ext_library/websocket/enums/Opcode;Ljava/nio/ByteBuffer;Z)V
.end method

.method public abstract sendFrame(Lcom/dji/ext_library/websocket/framing/Framedata;)V
.end method

.method public abstract sendFrame(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/dji/ext_library/websocket/framing/Framedata;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendPing()V
.end method

.method public abstract setAttachment(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation
.end method
