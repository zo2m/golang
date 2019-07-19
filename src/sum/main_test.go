package main

import "testing"

func TestSum(t *testing.T) {
	result := soma(5, 5)
	expected := 10

	if result != expected {
		t.Errorf("Expected the sum of 5 + 5 to be %d but instead got %d!", result, expected)
	}
}
