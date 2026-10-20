"""Manage some ZFS snapshots.

Hourly for a day
Daily for a week
Monthly for 6 months.

"""

import subprocess
import sys
from datetime import datetime, timedelta, timezone

ZFS = "/usr/sbin/zfs"


def magic(zvol: str, snap_to_make: str, snap_to_delete: str) -> None:
    """East of the Rockies, Hello."""
    cmd = [ZFS, "snapshot", f"{zvol}@{snap_to_make}"]
    subprocess.run(cmd)

    delname = f"{zvol}@{snap_to_delete}"
    # Check if the snapshot exists prior to trying to delete it
    result = subprocess.run(
        [ZFS, "list", "-t", "snapshot", delname], capture_output=True
    )
    if result.returncode != 0:
        return
    cmd = [ZFS, "destroy", delname]
    subprocess.run(cmd)


def main(argv: list[str]):
    """Do the magic."""
    zvol = argv[1]
    now = datetime.now(timezone.utc)
    # Hourly
    magic(
        zvol,
        f"{now:%Y%m%d%H}",
        f"{(now - timedelta(hours=24)):%Y%m%d%H}",
    )
    # Daily
    if now.hour == 0:
        magic(
            zvol,
            f"{now:%Y%m%d}",
            f"{(now - timedelta(days=7)):%Y%m%d}",
        )
    # Monthly, hacky
    if now.day == 1 and now.hour == 0:
        magic(zvol, f"{now:%Y%m}", f"{(now - timedelta(days=183)):%Y%m}")


if __name__ == "__main__":
    main(sys.argv)
