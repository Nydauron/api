package database

import (
	"errors"
	"fmt"

	"go.mongodb.org/mongo-driver/mongo"
)

var (
	ErrNotFound        = errors.New("Error: NOT_FOUND")
	ErrConnection      = errors.New("Error: CONNECTION_FAILED")
	ErrDisconnected    = errors.New("Error: CLIENT_DISCONNECTED")
	ErrUnknown         = errors.New("Error: UNKNOWN")
	ErrNilPassedToCRUD = errors.New("Error: NIL_PASSED_TO_CRUD") // this is an error the user should never get and is merely here for debugging
)

/*
	Converts internal mgo errors to external presented errors
*/
func convertMgoError(err error) error {
	// TODO: Need to try and encompass all possible errors
	switch err {
	case nil:
		return nil
	case mongo.ErrClientDisconnected:
		return ErrDisconnected
	case mongo.ErrNilDocument:
		return ErrNilPassedToCRUD
	case mongo.ErrNoDocuments:
		return ErrNotFound
	default:
		fmt.Println("Unhandled error: ", err)
		return ErrUnknown
	}
}
