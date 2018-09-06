//
// IssueChatHistoryTranscript.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class IssueChatHistoryTranscript: JSONEncodable {

    /** Chat Id */
    public var chatId: String?
    /** Participant Name */
    public var participant: String?
    /** Participant Id */
    public var participantId: String?
    /** TimeStamp */
    public var timestamp: Date?
    /** Had Payload */
    public var hadPayload: Bool?
    /** Message Text */
    public var text: String?
    /** User Name */
    public var user: String?
    /** Chat */
    public var chat: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["chat_id"] = self.chatId
        nillableDictionary["participant"] = self.participant
        nillableDictionary["participant_id"] = self.participantId
        nillableDictionary["timestamp"] = self.timestamp?.encodeToJSON()
        nillableDictionary["hadPayload"] = self.hadPayload
        nillableDictionary["text"] = self.text
        nillableDictionary["user"] = self.user
        nillableDictionary["chat"] = self.chat

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

