const socketToUid = new Map();
const uidToSockets = new Map();

const UserSessionManager = {
    addSession(uid, socketId) {
        // Remove old mapping if exists for this socketId (e.g. user changed uid on same socket?)
        this.removeSession(socketId);

        socketToUid.set(socketId, uid);

        if (!uidToSockets.has(uid)) {
            uidToSockets.set(uid, new Set());
        }
        uidToSockets.get(uid).add(socketId);
    },

    removeSession(socketId) {
        if (socketToUid.has(socketId)) {
            const uid = socketToUid.get(socketId);
            socketToUid.delete(socketId);

            if (uidToSockets.has(uid)) {
                const sockets = uidToSockets.get(uid);
                sockets.delete(socketId);
                if (sockets.size === 0) {
                    uidToSockets.delete(uid);
                }
            }
        }
    },

    getSocketIds(uid) {
        if (uidToSockets.has(uid)) {
            return Array.from(uidToSockets.get(uid));
        }
        return [];
    }
};

module.exports = UserSessionManager;
