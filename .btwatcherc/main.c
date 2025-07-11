#include <dbus/dbus.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main() {
  DBusError err;
  DBusConnection *conn;
  DBusMessage *msg;

  // Initialize the errors
  dbus_error_init(&err);

  // Connect to the system bus
  conn = dbus_bus_get(DBUS_BUS_SYSTEM, &err);
  if (dbus_error_is_set(&err)) {
    fprintf(stderr, "Connection Error (%s)\n", err.message);
    dbus_error_free(&err);
  }
  if (!conn)
    return 1;

  // Add a match rule for PropertiesChanged
  dbus_bus_add_match(conn,
                     "type='signal',interface='org.freedesktop.DBus.Properties'"
                     ",member='PropertiesChanged'",
                     &err);
  dbus_connection_flush(conn);

  if (dbus_error_is_set(&err)) {
    fprintf(stderr, "Match Error (%s)\n", err.message);
    dbus_error_free(&err);
    return 1;
  }

  while (1) {
    dbus_connection_read_write(conn, 0);
    msg = dbus_connection_pop_message(conn);

    if (msg == NULL) {
      usleep(100000); // Sleep for 100ms
      continue;
    }

    // Check signal interface
    if (dbus_message_is_signal(msg, "org.freedesktop.DBus.Properties",
                               "PropertiesChanged")) {

      DBusMessageIter args;
      dbus_message_iter_init(msg, &args);

      // Get first argument: interface name
      if (DBUS_TYPE_STRING == dbus_message_iter_get_arg_type(&args)) {
        char *interface_name;
        dbus_message_iter_get_basic(&args, &interface_name);

        if (strcmp(interface_name, "org.bluez.Device1") == 0) {
          // Call external command
          system("pkill -SIGRTMIN+3 dwmblocks");
        }
      }
    }

    dbus_message_unref(msg);
  }

  return 0;
}
