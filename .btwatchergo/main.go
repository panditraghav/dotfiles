package main

import (
	"os/exec"

	"github.com/godbus/dbus/v5"
)

func main() {
	conn, err := dbus.SystemBus()
	if err != nil {
		panic(err)
	}

	// Match all signals for PropertiesChanged
	conn.AddMatchSignal(
		dbus.WithMatchInterface("org.freedesktop.DBus.Properties"),
		dbus.WithMatchMember("PropertiesChanged"),
	)

	ch := make(chan *dbus.Signal, 10)
	conn.Signal(ch)

	for signal := range ch {
		// Ignore unrelated signals
		if len(signal.Body) < 3 {
			continue
		}
		interfaceName, ok := signal.Body[0].(string)
		if !ok || interfaceName != "org.bluez.Device1" {
			continue
		}
		exec.Command("pkill", "-SIGRTMIN+3", "dwmblocks").Run()
	}
}
