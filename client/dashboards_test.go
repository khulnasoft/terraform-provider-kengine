package client

import (
	"context"
	"os"
	"testing"
)

func TestClient_GetDashboard(t *testing.T) {
	config := &Config{
		APIHost: "go.kengine.khulnasoft.com",
		APIKey:  os.Getenv("KENGINE_API_KEY"),
	}
	c := NewClient(config)
	q, err := c.GetDashboard(context.Background(), "terraformed-dashboard")
	if err != nil {
		t.Fatal(err)
	}
	t.Log(q)
}
